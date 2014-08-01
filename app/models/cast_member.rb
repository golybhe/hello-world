class CastMember < ActiveRecord::Base 
	has_and_belongs_to_many :films
	validates :full_name, uniqueness: true
end
