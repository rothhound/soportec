#!/bin/env ruby
# encoding: utf-8

class LaboratoriesController < ApplicationController
  
  load_and_authorize_resource :professor, :course, :schedule
  skip_load_and_authorize_resource :professor, :course, :schedule
  before_filter :authenticate_user!
  
  # GET /laboratories
  # GET /laboratories.json
  def index
    # Ordenamos por numero de laboratorio
    @laboratories = Laboratory.order("number ASC").all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @laboratories }
    end
  end

  # GET /laboratories/1
  # GET /laboratories/1.json
  def show
    @laboratory = Laboratory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @laboratory }
    end
  end

  # GET /laboratories/new
  # GET /laboratories/new.json
  def new
    @laboratory = Laboratory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @laboratory }
    end
  end

  # GET /laboratories/1/edit
  def edit
    @laboratory = Laboratory.find(params[:id])
  end

  # POST /laboratories
  # POST /laboratories.json
  def create
    @laboratory = Laboratory.new(params[:laboratory])

    respond_to do |format|
      if @laboratory.save
        format.html { redirect_to @laboratory, notice: 'Laboratorio creado con éxito.' }
        format.json { render json: @laboratory, status: :created, location: @laboratory }
      else
        format.html { render action: "new" }
        format.json { render json: @laboratory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /laboratories/1
  # PUT /laboratories/1.json
  def update
    @laboratory = Laboratory.find(params[:id])

    respond_to do |format|
      if @laboratory.update_attributes(params[:laboratory])
        format.html { redirect_to @laboratory, notice: 'Laboratorio actualizado con éxito.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @laboratory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laboratories/1
  # DELETE /laboratories/1.json
  def destroy
    @laboratory = Laboratory.find(params[:id])
    @laboratory.destroy

    respond_to do |format|
      format.html { redirect_to laboratories_url }
      format.json { head :no_content }
    end
  end

  def search    
  	@pred = 1
  	if(current_user.role_id == 3)
  		@pred = current_user.laboratory.id
  	end
  	if(params[:labo].present?)
  		@pred = params[:labo][:number]
  	end
    @laboratories = Laboratory.all
    @laboratory1 = Laboratory.find(:all ,:joins => {:schedules  => {course: :professor}}, :select => "*,schedules.id as id, laboratories.id as lab_id,courses.name as title, professors.name as body, courses.group_id as group_id", :conditions => {:id => @pred})
    @lab= @laboratory1.to_json(:only => [ :id, :day_id ,:start ,:end,:title, :body, :lastname, :group_id])
    respond_to do |format|
      	format.html # search.html.erb
      	format.json { render json: @laboratories }      	
    end
  end

  # GET /manage
  def manage
    @laboratories = Laboratory.order(:number).page(params[:page]).per(1)

    @laboratory = Laboratory.new

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @laboratories }
    end
  end

  def responsibles
    @laboratory = Laboratory.all
    respond_to do |format|
        format.html # search.html.erb
        format.json { render json: @laboratory }
    end
  end

  def assignuser
    @laboratory = Laboratory.find(params[:id])
    @user = User.all

    Laboratory.all.each do |l|
      @user.delete(l.user)
    end

    respond_to do |format|
        format.html # asignuser.html.erb
        format.json { render json: @laboratory }
    end
  end

  def find
    @laboratory = nil
    @filter_capacity = Laboratory.order("capacity DESC").find(:all,:select => "DISTINCT laboratories.capacity")
    @filter_floor = Laboratory.order("floor ASC").find(:all,:select => "DISTINCT laboratories.floor")
    @filter_numComputers = Laboratory.order("numComputers DESC").find(:all,:select => "DISTINCT laboratories.numComputers")    
    @filter_sw = Software.all

    numComputers = params[:numComputers]
    sw = params[:software_id]
    projector = params[:projector]


    if(sw.present?)
      @Laboratory = Laboratory.find(:all,:joins =>[:softwares])

      if(searchN != '' and searchN.present?)
        @Laboratory = Laboratory.find(:all,:joins =>[:softwares],:select => "laboratories.*, softwares.name as software")
        @prof_filter = Laboratory.find(:all,:joins =>[:softwares] ,:select => "laboratories.*, softwares.name as software",:conditions => ['software.name like ?' , "%#{sw}%"])
        @Laboratory = @Laboratory & @prof_filter
      end
      if(numComputers.blank? and sw.blank? and projector.blank? and sound.blank? and sw.blank?)
        @laboratory = nil
      end
    end
    respond_to do |format|
         format.html # search.html.erb
        format.json { render :xml => @laboratory}
      end
    end
end
