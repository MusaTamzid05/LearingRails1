class MainController < ApplicationController
  def index
    @photos =  Photo.all
  end

  def show
    puts "calling show"
    @photo = Photo.find(params[:photo_id])
  end

  def add_comment
    puts "Adding comment "
    puts "Photo id #{params[:photo_id]}"
    puts "username #{params[:username]}"
    puts "comment #{params[:comment]}"

    comment = Comment.create(name: params[:username], text: params[:comment], photo_id: params[:photo_id])
    puts comment

    redirect_to show_gallery_photo_path(params[:photo_id])

  end
end
