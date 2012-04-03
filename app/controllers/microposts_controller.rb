class MicropostsController < ApplicationController
respond_to :html, :json
 before_filter :authenticate, :only => [:create, :destroy]
  before_filter :authorized_user, :only => :destroy
  
  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
      @feed_items = []
      render root_path
    end
  end
  
  def update
    @micropost = current_user.microposts.find(params[:id])
    @micropost.update_attributes(params[:micropost])
	respond_with @micropost
   
    
  end
  
  def destroy
    @micropost.destroy
    redirect_back_or root_path
  end
 
   private

    def authorized_user
      @micropost = Micropost.find(params[:id])
      redirect_to root_path unless current_user?(@micropost.user)
    end
	
end