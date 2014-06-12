class CollaborationsController < ApplicationController
  
def index
	@collaboration = Collaboration.all
end

 def new
	@collaboration = Collaboration.new
end

def show

end


def create
	@collaboration = Collaboration.new(cp)
	if @collaboration.save
		redirect_to urban_path
else
	render 'new'

end
end


private

	def cp
		params.require(:collaboration).permit(:name, :email, :company, :phone, :city, :country, :message, :humanizer_answer, :humanizer_question_id )
	end

end
