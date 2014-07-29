class SiteController < ApplicationController
	def home
		render 'home'
	end
	def contact
		render 'contact'
	end
	def project
		render 'project'
	end
end
