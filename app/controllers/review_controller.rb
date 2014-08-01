class ReviewController < ApplicationController
	def new
		@film = Film.find params[:id]
		@review = @film.reviews.new

	end 
	def create
		@film=Film.find params[:id]
		@review =@film.reviews.new review_params 
	
		if @review.save
			redirect_to action: "show", controller: "review", id: @film.id
		else
			render "new"
		end
	end

	def show
	# 	@review =Review.find params[:id]
		render 'create'

	end

	private
	def  review_params
		params.require(:review).permit(:description, :reviewer)
	end

end

