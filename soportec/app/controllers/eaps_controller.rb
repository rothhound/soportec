class EapsController < ApplicationController

  load_and_authorize_resource
  before_filter :authenticate_user!

  # GET /eaps
  # GET /eaps.json
  def index
    @eaps = Eap.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eaps }
    end
  end

  # GET /eaps/1
  # GET /eaps/1.json
  def show
    @eap = Eap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eap }
    end
  end

  # GET /eaps/new
  # GET /eaps/new.json
  def new
    @eap = Eap.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eap }
    end
  end

  # GET /eaps/1/edit
  def edit
    @eap = Eap.find(params[:id])
  end

  # POST /eaps
  # POST /eaps.json
  def create
    @eap = Eap.new(params[:eap])

    respond_to do |format|
      if @eap.save
        format.html { redirect_to @eap, notice: 'Eap was successfully created.' }
        format.json { render json: @eap, status: :created, location: @eap }
      else
        format.html { render action: "new" }
        format.json { render json: @eap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eaps/1
  # PUT /eaps/1.json
  def update
    @eap = Eap.find(params[:id])

    respond_to do |format|
      if @eap.update_attributes(params[:eap])
        format.html { redirect_to @eap, notice: 'Eap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @eap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eaps/1
  # DELETE /eaps/1.json
  def destroy
    @eap = Eap.find(params[:id])
    @eap.destroy

    respond_to do |format|
      format.html { redirect_to eaps_url }
      format.json { head :no_content }
    end
  end
end
