class Project < ActiveRecord::Base
# 	set_table_name 'Project' 
#solo se pondria si quisieras cambiar el 
#nombre a la tabla de la cual está cogiendo los datos
	def self.iron_find (id) 
		project= where(id: id).first
		unless project.present?
			raise
	ActiveRecord::RecordNotFound.new("unable to find this project")
		end	
		project 	
	end
	def last_created_projects(n)
		order(created_at: :desc).limit(n) 
	end


end





# class ProjectController < AppkicationController
# 	def index
# 		@projects = Project.last_created_projects(10)
# 	end
# end
