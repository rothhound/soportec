class ProfessorsController < ApplicationController
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

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @professor }
    end
  end

  # GET /professors/1/edit
  def edit
    @professor = Professor.find(params[:id])
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
    @professor.destroy

    respond_to do |format|
      format.html { redirect_to professors_url }
      format.json { head :no_content }
    end
  end

  # GET /manage
  def manage
    @professors = Professor.all

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @professors }
    end
  end

  def search
    #@professors = Professor.all
    #@courses = Course.find(:all,:select => "CONVERT(CONCAT(name,'- G',group_id,'- 20.',eap_id) USING utf8) as dato")
    @courses = Professor.find(:all,:joins => [:course], :select => "professors.course_id as curso, CONVERT(CONCAT(courses.name,' - G',courses.group_id,' - 20.',courses.eap_id) USING utf8) as dato")

    searchN =  params[:name]
    searchA =  params[:lastname]
    searchC =  params[:curso] 
    #searchC1 =  params[:curso] 
    #searchC = searchC1[:curso_id]

    script = ''

    #if(searchN != '' or searchA != '' or searchC != '')
      @professorsN = Professor.find(:all,:select => "professors.*",:conditions => ['name like ?' , "%#{searchN}%" ])
      @professorsA = Professor.find(:all,:select => "professors.*",:conditions => ['lastname like ?' , "%#{searchA}%"])
      @professorsC = Professor.find(:all,:select => "professors.*",:conditions => ['course_id = ?' , searchC])

      #if(searchN != '')
      #  @professors = @professorsN
      #end

      #if((searchA != '' or searchC !='') and searchN!='')
      #  @professors = @professorsN 
      #end      

      #if(searchA != '')
      #  @professors = @professorsA
      #end

      #if(searchC != '' and searchA != '')
      #  script = script + ' AND '
      #end

      #if(searchC != '')
      #  @professors = @professorsC
      #end

      #@professors = Professor.find(:all,:conditions => [script,"%#{searchN}%" ,"%#{searchA}%",searchC[:curso_id]])
    #end

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @professorsA }
    end
  end
end
