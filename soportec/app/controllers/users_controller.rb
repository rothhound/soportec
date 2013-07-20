class UsersController < ApplicationController

  #load_and_authorize_resource :role
  skip_load_and_authorize_resource :role
  before_filter :authenticate_user!
  
  # GET /users
  # GET /users.xml
  def index
    @users = User.all
    @roles = Role.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])
    @role = Role.find(@user.role_id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
    authorize! :create, @user
    @roles = Role.all
    @current_method = "new"

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    authorize! :update, @user
    #authorize! :editar, @user
    @roles = Role.all
    @current_method = "update"
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    @roles = Role.all
    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    authorize! :destroy, @user
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

  # GET /manage
  def manage
    @users = User.order(:name).page(params[:page]).per(10)
    #authorize! :read, @users
    @roles = Role.all

    @user = User.new
    respond_to do |format|
      format.html # manage.html.erb
      format.xml  { render :xml => @users }
    end
  end
end