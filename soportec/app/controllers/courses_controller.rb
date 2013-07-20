class CoursesController < ApplicationController
  
  #load_and_authorize_resource :eap , :group
  skip_load_and_authorize_resource :eap, :group
  before_filter :authenticate_user!

  # GET /courses
  # GET /courses.json
  def index
    #@courses = Course.all
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

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new
    authorize! :create, @course

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
    authorize! :edit, @course
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])

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
    authorize! :destroy, @course
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

  # GET /manage
  def manage
    @courses_sys = Course.where(:eap_id => 1).order(:code).page(params[:page_sys]).per(10)
    @courses_soft = Course.where(:eap_id => 2).order(:code).page(params[:page_soft]).per(10)

    @course = Course.new

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @courses }
    end
  end

  def search
      @eaps = Eap.all
      @groups =Group.all

      searchN = params[:name]
      searchP = params[:profesor]
      searchE = params[:eap_id]
      searchG = params[:group_id]

    if(searchN.present? or searchE.present? or searchG.present? or searchP.present?)

      @courses = Course.find(:all,:joins => [:eap , :group, :professor] ,:select =>"courses.id, courses.code, courses.name, eaps.name as eaps, groups.name as groups, CONCAT(professors.name,' ',professors.lastname) as profesor")

      if(searchN.present? and searchN != '')
        @coursesN = Course.find(:all,:joins => [:eap , :group, :professor] ,:select =>"courses.id, courses.code, courses.name, eaps.name as eaps, groups.name as groups, CONCAT(professors.name,' ',professors.lastname) as profesor",:conditions => ['courses.name like ?' , "%#{searchN}%"])
        @courses = @courses & @coursesN
      end

      if(searchP.present? and searchP != '' )
        @coursesP = Course.find(:all,:joins => [:eap , :group, :professor] ,:select =>"courses.id, courses.code, courses.name, eaps.name as eaps, groups.name as groups, CONCAT(professors.name,' ',professors.lastname) as profesor",:conditions => ['CONCAT(professors.name, ? ,professors.lastname) like ?' ,"#" ""  ,"%#{searchP}%"])
        @courses = @courses & @coursesP
      end

      search1=searchE[:eap]

      if(searchE.present? and search1.present?)
        @coursesE = Course.find(:all,:joins => [:eap , :group, :professor] ,:select =>"courses.id, courses.code, courses.name, eaps.name as eaps, groups.name as groups, CONCAT(professors.name,' ',professors.lastname) as profesor",:conditions => ['courses.eap_id = ?' , search1])
        @courses = @courses & @coursesE
      end

      search2=searchG[:group]
      
      if(searchG.present? and search2.present?)
        @coursesG = Course.find(:all,:joins => [:eap , :group, :professor] ,:select =>"courses.id, courses.code, courses.name, eaps.name as eaps, groups.name as groups, CONCAT(professors.name,' ',professors.lastname) as profesor",:conditions => ['courses.group_id = ?' , search2])
        @courses = @courses & @coursesG
      end

      if(searchN.blank? and searchP.blank? and search1.blank? and search2.blank?)
        @courses = nil
      end
    
    end
      
      respond_to do |format|
        format.html # search.html.erb
        format.json { render json: @courses }
      end
    end

end
