class EventsController < ApplicationController
  def index
  	
  	@user= User.find(session[:user_id])
  	@events = Event.where("location = ?", @user.location)
  	@other_events= Event.where.not("location = ?", @user.location)
  end

  	def show 
  	 @events = Event.find(params[:id])
  	 @count= Attendee.all.where("event_id = ?", params[:id]).count
  	 @comments= @events.comments
  	 @attending = User.joins(:attendees).where("attendees.event_id = ?", params[:id])
  	end 	
   def create
   Event.create(name: params[:name], location: params[:location], date: params[:date],user_id: session[:user_id])
   
   redirect_to :back
  end	

	def update
  	event = Event.find(params[:id])
  		if event.update(event_params)
  			redirect_to :root
   		else flash[:errors] = event.errors.full_messages
  			redirect_to :back
  		end	
  end	

	

	def destroy
		reset_session
		redirect_to '/events/index'
	end  

end
  
