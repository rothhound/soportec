class SchedulesController < ApplicationController
  protect_from_forgery :except => :dynamic_create
  #load_and_authorize_resource :day, :laboratory, :course
  skip_load_and_authorize_resource :day, :laboratory, :course
  before_filter :authenticate_user!

  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.all
    @course = Course.all
    @professor = Professor.all 
    @laboratory= Laboratory.all
    @day = Day.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @schedules }
    end
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
    @schedule = Schedule.find(params[:id])
    @course = Course.all
    @professor = Professor.all
    @laboratory= Laboratory.all
    @day = Day.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @schedule }
    end
  end

  # GET /schedules/new
  # GET /schedules/new.json
  def new
    @schedule = Schedule.new
    authorize! :create, @schedule

    @course1 = Course.find(:all,:joins => [:eap , :group] ,:select =>"courses.id as id, CONCAT_ws(' - ',courses.name, groups.name, eaps.name) as curso",:order => "courses.name")
    @course2 = Course.find(:all,:joins => [:eap , :group, :professor] ,:select =>"courses.id as id, CONCAT_ws(' - ',courses.name, groups.name, eaps.name) as curso",:order => "courses.name")#Course.find(:all, :joins => [:professor])
    @course=@course1-@course2

    #@professor = Professor.all

    @professor = Professor.find(:all, :select =>"CONCAT_ws(' ',name,lastname) as datos", :order => "name" )

    @laboratory= Laboratory.all
    @eap=Eap.all
    @day = Day.all
    @current_method = "new"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :xml => @schedule }
    end
  end

  # GET /schedules/1/edit
  def edit
    @schedule = Schedule.find(params[:id])
    authorize! :update, @schedule
    @course = Course.all
    @professor = Professor.all
    @day = Day.all
    @eap=Eap.all
    @laboratory= Laboratory.all
    @current_method = "update"
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(params[:schedule])
    @eap=Eap.all
    @profesor = Professor.find(params[:profesor][:id], :select)
    @profesor.course_id = @schedule.course_id
    @profesor.save
    
    respond_to do |format|
      if @schedule.save
        format.html { redirect_to @schedule, notice: 'Schedule was successfully created.' }
        format.json { render :xml => @schedule, status: :created, location: @schedule }
      else
        format.html { render action: "new" }
        format.json { render :xml => @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schedules/1
  # PUT /schedules/1.json
  def update
    @schedule = Schedule.find(params[:id])

    respond_to do |format|
      if @schedule.update_attributes(params[:schedule])
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule = Schedule.find(params[:id])
    authorize! :destroy, @schedule
    @schedule.destroy

    respond_to do |format|
      format.html { redirect_to schedules_url }
      format.json { head :no_content }
    end
  end

  #dynamic courses
  def dynamic_new
    @schedule = Schedule.new
    authorize! :dynamic, @schedule

    @course1 = Course.find(:all,:joins => [:eap , :group] ,:select =>"courses.id as id, CONCAT_ws(' - ',courses.name, groups.name, eaps.name) as curso",:order => "courses.name")
    @course2 = Course.find(:all,:joins => [:eap , :group, :professor] ,:select =>"courses.id as id, CONCAT_ws(' - ',courses.name, groups.name, eaps.name) as curso",:order => "courses.name")#Course.find(:all, :joins => [:professor])
    @course=@course1-@course2


    #@professor = Professor.all   
    @professor = Professor.find(:all, :select =>"CONCAT_ws(' ',name,lastname) as datos", :order => "name" )

    @pred = 1
  	if(current_user.role_id == 3)
  		@pred = current_user.laboratory.id
  	end
  	if(params[:labo].present?)
  		@pred = params[:labo][:number]
  	end
    @laboratory = Laboratory.all
    @laboratory1 = Laboratory.find(:all ,:joins => {:schedules  => {course: :professor}}, :select => "*,schedules.id as id, laboratories.id as lab_id,courses.name as title, professors.name as body, courses.group_id as group_id", :conditions => {:id => @pred})
    @lab= @laboratory1.to_json(:only => [ :id, :day_id ,:start ,:end,:title, :body, :lastname, :group_id])
    @eap=Eap.all
    @day = Day.all
    @current_method = "new"
    respond_to do |format|
      format.html # dynamic_new.html.erb
      format.json { render :xml => @schedule }
    end
  end
  
  def dynamic_create
    @schedule = Schedule.new(params[:schedule])
    @eap=Eap.all
    @profesor = Professor.find(params[:course_id][:professor_id])
    @profesor.course_id = @schedule.course_id
    @profesor.save
    
    respond_to do |format|
      if @schedule.save
        format.html { redirect_to dynamic_new_schedules_path, notice: 'Schedule was successfully created.' }
        format.json { render :xml => @schedule, status: :created, location: @schedule }
      else
        format.html { redirect_to dynamic_new_schedules_path, notice: 'No se pudo guardar.' }
        format.json { render :xml => @schedule.errors, status: :unprocessable_entity }
      end
    end
  end
end
