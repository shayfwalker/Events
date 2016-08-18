class UsersController < ApplicationController
  



  def index
    @users= User.all
  end   

  def create
  	user = User.create(user_params)
  	if user.save
  		redirect_to :root
  	else 	
  		flash[:errors] = user.errors.full_messages
  		redirect_to :back
  	end	
  end

  def edit
  	@users = User.find(params[:id])
  end

  def update
  	user = User.find(params[:id])
  		if user.update(user_params)
  			redirect_to :root
  		else flash[:errors] = user.errors.full_messages
  			redirect_to :back
  		end	
  end	
  def destroy
    reset_session
    redirect_to "/users/index"
   end
  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :location, :password_digest )
  end	
end
