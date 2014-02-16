class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def new
		@picture = Picture.new
	end

	def show
		@picture = Picture.find(params[:id])
	end


	def create
    @picture = Picture.create create_picture_params
    redirect_to pictures_path
	end

	private

	def create_picture_params
  	params.require(:picture).permit(:title, :image)
  end
end
