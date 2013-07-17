class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.json
  def index
    @professors = Professor.all

    @courses = Course.find(:all, :joins => [:eap , :group] ,:select =>"courses.id, courses.code, courses.name, eaps.name as eaps, groups.name as groups" )

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    #@course = Course.find(params[:id])
    @course = Course.find(params[:id], :joins => [:eap , :group] ,:select =>"courses.id, courses.code, courses.name, eaps.name as eaps, groups.name as groups" )
    @eaps = Eap.all
    @groups =Group.all
    @professors = Professor.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new
    @eaps = Eap.all
    @groups =Group.all
    @professors = Professor.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
    @eaps = Eap.all
    @groups =Group.all
    @professors = Professor.all
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])
    @eaps = Eap.all
    @groups =Group.all
    @professors = Professor.all

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = Course.find(params[:id])
    @eaps = Eap.all
    @groups =Group.all
    @professors = Professor.all

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    @eaps = Eap.all
    @groups =Group.all
    @professors = Professor.all
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

  # GET /manage
  def manage
    @courses = Course.all

    @eaps = Eap.all
    @groups =Group.all
    @professors = Professor.all

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @courses }
    end
  end

  def search
    @courses = Course.all
    @eaps = Eap.all
    @groups =Group.all
    #@eaps[0]=Eap.new("---SELECCIONE ELEMENTO---")
    #@groups[0]=Group.new(0,"---SELECCIONE ELEMENTO---")
    @professors = Professor.all

    @coursesN = Course.find(:all,:conditions => ["name like ?" , params[:name]])
    #@coursesP = Course.find(:all,:conditions => ["name like ?" , params[:name]])
    @coursesE = Course.find(:all,:conditions => ["eap_id = ?", params[:eap_id]])
    @coursesG = Course.find(:all,:conditions => ["group_id = ?", params[:group_id]])
    
    respond_to do |format|
      format.html # search.html.erb
      format.json { render json: @courses }
    end
  end
end
