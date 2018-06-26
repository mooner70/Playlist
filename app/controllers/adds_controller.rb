class AddsController < ApplicationController

  def index
    
  end


  
  def create
    add = Add.create(user_id: current_user.id, song_id: params[:id])
    redirect_to :back
    # if(student.valid? == false)
    # redirect_to "/dojo/#{params[:dojo_id]}/students/new", alert: student.errors.full_messages
    # end
  end
  
end
