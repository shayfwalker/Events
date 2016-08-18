class SessionsController < ApplicationController
  def new 
  end 	
  def create 
  		
    user = User.find_by_email(params[:email])
    password = User.find_by_password_digest(params[:password_digest])
    if user && password
      session[:user_id] = user.id
      redirect_to '/events/index'
    else
      flash[:errors] = ["Invalid"]
      redirect_to :back
    end
  end

  def destroy
    reset_session
    redirect_to "/users/index"
   end
end
