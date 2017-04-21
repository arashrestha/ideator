class StaticPagesController < ApplicationController
	def random 
		@idea = Idea.order("RANDOM()").first
	end
	def about
	end
end
