class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def login
    puts "VH : INDEX"
    @message = "HEllo world"
  end

  def index

    puts "PATH_INFO : #{request.env['PATH_INFO']}"
    puts "REQUEST_URI : #{request.env['REQUEST_URI']}"

    user = User.find(1)

    puts user.products.build


    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User created !' }
        format.json { render :show, status: :created, location: @user  }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, :notice => 'User was updated!'
    else
      render :edit
    end
  end

  def set_user
    @user = User.find(params['id'])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
