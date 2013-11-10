class UsersController < ApplicationController
 
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create 
  	@user = User.new(user_params)
  	if @user.save
  		flash[:notice] = "Thank you for signing up!"
  		redirect_to help_path		
  	else
  		render "new"
  	end
  end

  def user_params
  	params.require(:user).permit(:gender, :yob, :password, :password_confirmation)
end
end

#def show
	#@user = user.find
#end
