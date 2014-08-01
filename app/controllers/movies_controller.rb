class MoviesController < ApplicationController
	def show_one_film  
		@films= Film.where(id: params[:id]).first
		unless @films.present?
			render "error", layout: "notfound"
	
		end	
		 
	end
end

