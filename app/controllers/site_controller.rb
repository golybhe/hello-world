class SiteController < ApplicationController
	def home

		@films= Film.limit(5).offset(6).order("id ASC")

	end
end
