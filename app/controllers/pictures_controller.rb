class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def like
    # binding.pry
    @picture = Picture.find(params[:id])
    @picture.update_likes(current_user)
    message = @picture.likes_message(current_user)
    respond_to do |f|
      # binding.pry
      f.json { render json: { message: message }}
      # if @picture.update_likes(current_user)
      #   f.json { render json: {message: message} }
      #   # f.html { redirect_to root_path }
      # else
      #   render :'/application/index'
      # end
    end
  end
  # redirect_to root_path
end
