class ProfessorsController < ApplicationController
  # GET /professors
  # GET /professors.json
  def index
    @professors = Professor.all
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @professors }
    end
  end

  # GET /professors/1
  # GET /professors/1.json
  def show
    @professor = Professor.find(params[:id])
    @courses = Course.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @professor }
    end
  end

  # GET /professors/new
  # GET /professors/new.json
  def new
    @professor = Professor.new
    @courses = Course.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @professor }
    end
  end

  # GET /professors/1/edit
  def edit
    @professor = Professor.find(params[:id])
    @courses = Course.all
  end

  # POST /professors
  # POST /professors.json
  def create
    @professor = Professor.new(params[:professor])
    @courses = Course.all

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
    @courses = Course.all

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
    @courses = Course.all
    @professor.destroy

    respond_to do |format|
      format.html { redirect_to professors_url }
      format.json { head :no_content }
    end
  end

  # GET /manage
  def manage
    @professors = Professor.all
    @courses = Course.all

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @professors }
    end
  end

  def search
    @professors = Professor.all
    @courses = Course.all

    @professorsN = Professor.find(:all,:conditions => ["name like ?" , params[:name]])
    @professorsA = Professor.find(:all,:conditions => ["lastname like ?" , params[:lastname]])
    #@professorsC = Professor.find()

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @professors }
    end
  end
end
