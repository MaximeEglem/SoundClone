class UsersController < ApplicationController
    def show
    @user = User.find(params[:id])
  end

  def new
    @title = "Sign in"
  end
end
