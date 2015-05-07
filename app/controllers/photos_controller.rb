class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end
  def new_form
  	
  end
  def create_row
	ph=Photo.new
	ph.source= params["the_source"]
	ph.caption=params["the_caption"]
	ph.save
	redirect_to action: "index"
  end
  def destroy
  	ph=Photo.find(params[:id])
  	ph.destroy
  	redirect_to action: "index"
  end
  def edit_form
  	@photo=Photo.find(params[:id])
  end
  def update_row
  	ph=Photo.find(params[:id])
  	ph.source= params["the_source"]
	ph.caption=params["the_caption"]
	ph.save
	redirect_to action: "show", id: params[:id]
  end
  def show
  	@ph=Photo.find(params[:id])
  end

end
