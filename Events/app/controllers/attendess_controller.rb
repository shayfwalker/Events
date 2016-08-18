class AttendessController < ApplicationController
  def index
 
  end

  def create
  	user = User.find(session[:user_id])
  	event = Event.find(params[:id])
  	@events = Attendee.new(event: event, user: user)
  		if @events.save 
  			redirect_to '/events/index'
  		else 
  		redirect_to '/events/index'
  		end	
  end

  def destroy 
  	user = User.find(session[:user_id])
  	event = Event.find(params[:id])
  	join = Attendee.find_by(user: user, event: event)
  	join.destroy
  	redirect_to '/users/index'
  end 	
end
