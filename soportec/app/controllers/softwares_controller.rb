class SoftwaresController < ApplicationController

  #load_and_authorize_resource :category
  skip_load_and_authorize_resource :category
  before_filter :authenticate_user!
  
  # GET /softwares
  # GET /softwares.json
  def index
    @softwares = Software.find(:all, :joins => [:category] ,:select =>"softwares.id, softwares.name, softwares.version,categories.description as description")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @softwares }
    end
  end

  # GET /softwares/1
  # GET /softwares/1.json
  def show
    @software = Software.find(params[:id], :joins => [:category] ,:select =>"softwares.id, softwares.name, softwares.version,categories.description as description")

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @software }
    end
  end

  # GET /softwares/new
  # GET /softwares/new.json
  def new
    @software = Software.new
    authorize! :create, @software
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @software }
    end
  end

  # GET /softwares/1/edit
  def edit
    @software = Software.find(params[:id])
    authorize! :update, @software
  end

  # POST /softwares
  # POST /softwares.json
  def create
    @software = Software.new(params[:software])

    respond_to do |format|
      if @software.save
        format.html { redirect_to @software, notice: 'Software was successfully created.' }
        format.json { render json: @software, status: :created, location: @software }
      else
        format.html { render action: "new" }
        format.json { render json: @software.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /softwares/1
  # PUT /softwares/1.json
  def update
    @software = Software.find(params[:id])

    respond_to do |format|
      if @software.update_attributes(params[:software])
        format.html { redirect_to @software, notice: 'Software was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @software.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /softwares/1
  # DELETE /softwares/1.json
  def destroy
    @software = Software.find(params[:id])
    authorize! :destroy, @software
    @software.destroy

    respond_to do |format|
      format.html { redirect_to softwares_url }
      format.json { head :no_content }
    end
  end

  # GET /manage
  def manage
    @softwares = Software.find(:all, :joins => [:category] ,:select =>"softwares.id, softwares.name, softwares.version,categories.description as description")

    @software = Software.new
    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @softwares }
    end
  end

  def search
    @categories = Category.all
    @softwares = nil

    searchN = params[:name]
    searchC = params[:category_id]
    
  if(searchN.present? or searchC.present?)
      @softwares = Software.find(:all, :joins => [:category] ,:select =>"softwares.id, softwares.name, softwares.version,categories.description as description")
      
      if(searchN.present? and searchN !='')
        @softwareN = Software.find(:all, :joins => [:category] ,:select =>"softwares.id, softwares.name, softwares.version,categories.description as description",:conditions => ['name like ?' , "%#{searchN}%"])
        @softwares = @softwares & @softwareN
      end 

      search = searchC[:categoria]

      if(searchC.present? and search.present?)
        @softwareC = Software.find(:all,:joins => [:category] ,:select => "softwares.id, softwares.name, softwares.version,categories.description as description" ,:conditions => ["category_id = ?", search])
        @softwares = @softwares & @softwareC
      end
  end

  if(searchN.blank? and search.blank?)
    @softwares = nil
  end

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @softwares }
    end
  end
end
