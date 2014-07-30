class MoviesController < ApplicationController
	def show  
		@films= Film.where(id: params[:id]).first
		unless @films.present?
			render "error", layout: "notfound"
	
		end	
		 
	end
end
