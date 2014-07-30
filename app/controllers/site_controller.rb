class SiteController < ApplicationController
	def home
		@films= Film.limit(5).order("year DESC")

	end
	
	
end
