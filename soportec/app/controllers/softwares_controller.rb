class SoftwaresController < ApplicationController
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
    @categories = Category.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @software }
    end
  end

  # GET /softwares/1/edit
  def edit
    @software = Software.find(params[:id])
    @categories = Category.all
  end

  # POST /softwares
  # POST /softwares.json
  def create
    @software = Software.new(params[:software])
    @categories = Category.all

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
    @categories = Category.all

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
    @categories = Category.all
    @software.destroy

    respond_to do |format|
      format.html { redirect_to softwares_url }
      format.json { head :no_content }
    end
  end

  # GET /manage
  def manage
    @softwares = Software.all
    @categories = Category.all

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @softwares }
    end
  end

  def search
    @softwares = Software.all
    @categories = Category.all
    

    @SoftwareN = Software.find(:all,:conditions => ["name like ?" , params[:name]])
    @SoftwareC = Software.find(:all,:joins => [:category] ,:select => "softwares.*,categories.description" ,:conditions => ["category_id = ?", params[:category_id]])

    #if(){

    #}

    #else{

    #}

    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @softwares }
      format.json { render json: @softwareN }
    end
  end
end
