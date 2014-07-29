class ProjectsController < ApplicationController
	def index
		@projects= Project.order(created_at: :desc).limit(10)

	end 
	def show 
		@h =Project.find params[:id]
	# rescue ActiveRecord::RecordNotFound => e
	#  	"Lástima, no encontré el index :("	
	end
end
