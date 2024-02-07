class MainController < ApplicationController
  def index
    @photos =  Photo.all
  end

  def show
    puts "calling show"
    @photo = Photo.find(params[:photo_id])
  end
end
