class Film < ActiveRecord::Base
	has_and_belongs_to_many :cast_members
	has_many :reviews
	validates :poster, presence: true
	validates :title, uniqueness: true
	
end



