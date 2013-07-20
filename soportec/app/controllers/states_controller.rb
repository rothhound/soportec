class StatesController < ApplicationController

  skip_load_and_authorize_resource :laboratory
  before_filter :authenticate_user!

  # GET /states
  # GET /states.json
  def index
    @states = State.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @states }
    end
  end

  # GET /states/1
  # GET /states/1.json
  def show
    @state = State.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @state }
    end
  end

  # GET /states/new
  # GET /states/new.json
  def new
    @state = State.new
    @laboratory = Laboratory.all
    authorize! :create, @state

    @current_method = "new"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :xml => @state }
    end
  end

  # GET /states/1/edit
  def edit
    @state = State.find(params[:id])
    @laboratory = Laboratory.all
    authorize! :update, @state
    
    @current_method = "update"
  end

  # POST /states
  # POST /states.json
  def create
    @state = State.new(params[:state])
    
    respond_to do |format|
      if @state.save
        format.html { redirect_to @state, notice: 'state was successfully created.' }
        format.json { render :xml => @state, status: :created, location: @state }
      else
        format.html { render action: "new" }
        format.json { render :xml => @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /states/1
  # PUT /states/1.json
  def update
    @state = State.find(params[:id])

    respond_to do |format|
      if @state.update_attributes(params[:state])
        format.html { redirect_to @state, notice: 'state was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /states/1
  # DELETE /states/1.json
  def destroy
    @state = State.find(params[:id])
    authorize! :destroy, @state
    @state.destroy

    respond_to do |format|
      format.html { redirect_to states_url }
      format.json { head :no_content }
    end
  end

  def manage
    @states = State.all
    @state = State.new
    authorize! :leer, @state
    respond_to do |format|
      format.html # manage.html.erb
      format.json { render json: @states }
    end
  end

  #dynamic states
  def list
    
    @state = State.new
    authorize! :dynamic, @state

    @laboratory = Laboratory.all

    @state1 = State.find(:all, :conditions => ["laboratory_id = 1"]).last
    @state2 = State.find(:all, :conditions => ["laboratory_id = 2"]).last
    @state3 = State.find(:all, :conditions => ["laboratory_id = 3"]).last
    @state4 = State.find(:all, :conditions => ["laboratory_id = 4"]).last
    @state5 = State.find(:all, :conditions => ["laboratory_id = 5"]).last
    @state6 = State.find(:all, :conditions => ["laboratory_id = 6"]).last
    @state7 = State.find(:all, :conditions => ["laboratory_id = 7"]).last
    @state8 = State.find(:all, :conditions => ["laboratory_id = 8"]).last
    @state9 = State.find(:all, :conditions => ["laboratory_id = 9"]).last

    @stateL = []

    @stateL.push(@state1, @state2, @state3, @state4, @state5, @state6 , @state7 , @state8, @state9)

    @estado = @stateL.to_json(:only => [ :id, :laboratory_id ,:description])    

    @current_method = "new"
    respond_to do |format|
      format.html # dynamic_new.html.erb
      format.json { render :xml => @state }
    end
  end

  def dynamic_create
    @state1 = State.new(params[:state])
    
    respond_to do |format|
      if @state1.save
        format.html { redirect_to @state1, notice: 'state was successfully created.' }
        format.json { render :xml => @state1, status: :created, location: @state }
      else
        format.html { redirect_to @state1, notice: 'No se pudo guardar.' }
        format.json { render :xml => @state1.errors, status: :unprocessable_entity }
      end
    end
  end

def change
    @state = State.find(params[:id])
    @state1 = State.new

    authorize! :create, @state
    
    @current_method = "new"

    respond_to do |format|
      format.html # dynamic_new.html.erb
      format.json { render :xml => @state }
    end
  end

end
