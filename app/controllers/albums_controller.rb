class AlbumsController < ApplicationController
	def index
		@albums = Album.all
   
	end

	def new
		@album = Album.new
	end

	def show
		@album = Album.find(params[:id])
	end

	def create
    @album = Album.create create_album_params
    redirect_to albums_path
  end

  def edit
  	@album = Album.find params[:id]
  end

 	def update
  	@album = Album.find params[:id]
  	@album.update_attributes create_album_params
  	redirect_to albums_path
  end

  def destroy
  	@album = Album.find(params[:id])
  	@album.delete
  	redirect_to albums_path
  end

  private

  def set_prod
    @album = Album.find(params[:id])
  end

  private

  def create_album_params
  	params.require(:album).permit(:name)
  end

end
