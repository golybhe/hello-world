class Film < ActiveRecord::Base
	has_many :entries
	def show  
		@film= Film.limit(5).find_by(title)
		unless film.present?
			render "error", layout: "notfound"
	
		end	
		film 
	end
	
end



