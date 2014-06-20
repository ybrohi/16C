class CollaborationsController < ApplicationController

before_action :authenticate_user!, only: :index
before_action :admin_user, only: [:index, :show, :edit, :update, :destroy]

  
def index
	@collaborations = Collaboration.all
end

 def new
	@collaboration = Collaboration.new
end

def show
	@collaboration = Collaboration.find(params[:id])
end


def create
	@collaboration = Collaboration.new(cp)
	if @collaboration.save
		flash[:success] = "Input received. Thank you. Expect to hear from us within 72 hours."
		redirect_to urban_path
else
	render 'new'

end
end


private

	def cp
		params.require(:collaboration).permit(:name, :email, :company, :phone, :city, :country, :message, :humanizer_answer, :humanizer_question_id )
	end

	def admin_user
		redirect_to(root_url) unless current_user.admin? 
	end

end
