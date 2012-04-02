class UploadController < ApplicationController
	protect_from_forgery :only => [:create, :update, :destroy] 

  	def index
    	 render :file => 'app/views/upload/uploadfile.html.erb'
  	end

	def upload
    	  @post = [];
	 if params[:images]
     	 params[:images].each { | id, image | result = UploadedFile.save(id, image);
	    	  @post << result if result	}
	 end

      	respond_to do |format|
      	  format.html
      	end
      end

end
