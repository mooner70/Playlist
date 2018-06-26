class SongsController < ApplicationController

  def index
    # @products = Product.all
    @songs = Song.all

    # @songs = Song.where.not(user_id:current_user).where(buyer_id:0)
    # @products = Product.where.not(buyer_id == current_user)
  end

  # def count
  #   @count = Song.find_by(id: params["id"]).update(:count => count + 1)
  # end

  def show
    @song = Song.find(params[:id])
    @user = User.all
  end


  # def update
  #   Product.find_by(id: params["id"]).update(buyer_id:current_user.id, date:DateTime.now)
  #   redirect_to :back
  # end
  
  def create
    song = Song.create(title: params[:title], artist: params[:artist], user_id: current_user.id)
    if song.valid?
      return redirect_to "/songs"
    end
    redirect_to :back, alert: song.errors.full_messages
  end


  # def destroy
  #   Product.find(params[:id]).destroy
  #   redirect_to :back
  # end
  
end