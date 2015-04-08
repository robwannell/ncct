class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]
before_filter :require_login, except: [:show, :index ]
  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.all
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @album = Album.friendly.find(params[:id])
    
    @photo = Photo.where(:album_id => @album.id)
  end
  
  def set_cover
    @album = Album.find(params[:album_id])
    
    @photo = params[:photo_id]
    
   @album.update_attribute(:photo_id, params[:photo_id])
     redirect_to photo_path(params[:photo_id]), notice: 'Album was successfully updated.'
   
     
  end

  # GET /albums/new
  def new
    @album = Album.new
  end

  # GET /albums/1/edit
  def edit
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to gallery_path, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albums/1
  # PATCH/PUT /albums/1.json
  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to gallery_path, notice: 'Album was successfully updated.' }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @photos = Photo.where('album_id = ?', @album)
    if @photos.blank?
    @album.destroy
    respond_to do |format|
      format.html { redirect_to gallery_path, notice: 'Album was successfully destroyed.' }
      format.json { head :no_content }
    end
  else
    redirect_to album_path, notice: 'Album contains Photos! Please delete or move to another album first.'
  end
end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:title, :description)
    end
end
