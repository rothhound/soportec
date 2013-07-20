class ProfessorsController < ApplicationController

  #load_and_authorize_resource #:course
  skip_load_and_authorize_resource :course
  before_filter :authenticate_user!

  # GET /professors
  # GET /professors.json
  def index
    @professors = Professor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @professors }
    end
  end

  # GET /professors/1
  # GET /professors/1.json
  def show
    @professor = Professor.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @professor }
    end
  end

  # GET /professors/new
  # GET /professors/new.json
  def new
    @professor = Professor.new
    authorize! :create, @professor
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @professor }
    end
  end

  # GET /professors/1/edit
  def edit
    @professor = Professor.find(params[:id])
    authorize! :update, @professor
  end

  # POST /professors
  # POST /professors.json
  def create
    @professor = Professor.new(params[:professor])

    respond_to do |format|
      if @professor.save
        format.html { redirect_to @professor, notice: 'Professor was successfully created.' }
        format.json { render json: @professor, status: :created, location: @professor }
      else
        format.html { render action: "new" }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /professors/1
  # PUT /professors/1.json
  def update
    @professor = Professor.find(params[:id])

    respond_to do |format|
      if @professor.update_attributes(params[:professor])
        format.html { redirect_to @professor, notice: 'Professor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professors/1
  # DELETE /professors/1.json
  def destroy
    @professor = Professor.find(params[:id])
    authorize! :destroy, @professor
    @professor.destroy

    respond_to do |format|
      format.html { redirect_to professors_url }
      format.json { head :no_content }
    end
  end

  # GET /manage
  def manage
    @professors = Professor.order(:lastname).page(params[:page]).per(10)

    @professor = Professor.new

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @professors }
    end
  end

  def search
    @courses = Course.find(:all,:select => "DISTINCT courses.name")

    searchN =  params[:name]
    searchA =  params[:lastname]
    searchC =  params[:curso] 

    if(searchN.present? or searchA.present? or searchC.present?)
      @professors = Professor.find(:all,:joins => [:course] ,:select => "professors.*, courses.name as curso")

      if(searchN != '' and searchN.present?)
        @professorsN = Professor.find(:all,:joins => [:course] ,:select => "professors.*, courses.name as curso",:conditions => ['professors.name like ?' , "%#{searchN}%"])
        @professors = @professors & @professorsN
      end

      if(searchA != '' and searchA.present?)
        @professorsA = Professor.find(:all,:joins => [:course] ,:select => "professors.*, courses.name as curso",:conditions => ['lastname like ?' , "%#{searchA}%"])
        @professors = @professors & @professorsA
      end

      search = searchC[:curso_name]

      if(searchC.present? and search.present?)
        @professorsC = Professor.find(:all,:joins => [:course] ,:select => "professors.*, courses.name as curso",:conditions => ['courses.name like ?' , "#{search}"])
        @professors = @professors & @professorsC
      end
      if(searchN.blank? and searchA.blank? and search.blank?)
        @professors = nil
      end
    end

    respond_to do |format|
      format.html # search.html.erb
      format.json { render json: @professors }
    end
  end
end
