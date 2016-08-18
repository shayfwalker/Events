class CommentsController < ApplicationController
  def comments 
  	@comments = Comment.all	
  end

  def new
  	user = User.find(session[:user_id])
  	event = Event.find(params[:id])
  	@comments = Comment.new(description: params[:description], user_id: session[:user_id], event: event)
  	
  	if @comments.save
  	redirect_to :back

  	else 
  	redirect_to '/events/:id'
  end
end

end
