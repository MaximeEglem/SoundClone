class UsersController < ApplicationController
    def show
    @user = User.find(params[:id])
	@title = @user.name
  end

  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
	  sign_in @user		#	Signin directly the user after creation an account
      flash[:success] = "Welcome to SoundClone!"
      redirect_to @user
    else
      @titre = "Sign In"
      render 'new'
    end
  end
  
end
