class LaboratoriesController < ApplicationController
  
  load_and_authorize_resource :professor, :course, :schedule
  skip_load_and_authorize_resource :professor, :course, :schedule
  before_filter :authenticate_user!
  
  # GET /laboratories
  # GET /laboratories.json
  def index
    @laboratories = Laboratory.all

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
        format.html { redirect_to @laboratory, notice: 'Laboratory was successfully created.' }
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
        format.html { redirect_to @laboratory, notice: 'Laboratory was successfully updated.' }
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
    @laboratories = Laboratory.all
    @laboratory1 = Laboratory.find(:all ,:joins => {:schedules  => {course: :professor}}, :select => "*,schedules.id as id, laboratories.id as lab_id,courses.name as title, professors.name as body, courses.group_id as group_id", :conditions => {:id => params[:lab][:number]})
    @lab= @laboratory1.to_json(:only => [ :id, :day_id ,:start ,:end,:title, :body, :lastname, :group_id])
    respond_to do |format|
      	format.html # search.html.erb
      	format.json { render json: @laboratories }      	
    end
  end

  # GET /manage
  def manage
    @laboratories = Laboratory.all

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @laboratories }
    end
  end

  def assign
    @laboratory = Laboratory.all
    respond_to do |format|
        format.html # search.html.erb
        format.json { render json: @laboratory }
    end
  end

  def assignuser
    @laboratory = Laboratory.find(params[:id])
    @user = User.all
    respond_to do |format|
        format.html # search.html.erb
        format.json { render json: @laboratory }
    end
  end

end
