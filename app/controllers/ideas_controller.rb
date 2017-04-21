class IdeasController < ApplicationController
	def index
		@ideas= Idea.order("created_at DESC").paginate(:page => params[:page],:per_page=>3)
	end

	def create
		@idea= Idea.create(idea_params)
		if @idea.valid?
		#
		else
		#
		end	
		redirect_to root_path
	end

	def edit
		@idea= Idea.find(params[:id])
		
	end
	def update
		@idea = Idea.find(params[:id])
		if @idea.update(idea_params)
			redirect_to root_path
		else
			redirect_to edit_idea_params(params[:id])
        end
    end
	private

	def idea_params
		params.require(:idea).permit(:description,:author)
	end
end
