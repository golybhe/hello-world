class Project < ActiveRecord::Base
# 	set_table_name 'Project' 
#solo se pondria si quisieras cambiar el 
#nombre a la tabla de la cual está cogiendo los datos
	def self.iron_find (id) 
		project= where (id: id).first
		unless project.present?
			raise
	ActiveRecord::RecordNotFound.new("No se pudo encontrar ese id, lo siento")
		end	
		project 	
	end

end
