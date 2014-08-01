class Review < ActiveRecord::Base
	belongs_to :film
	validates :reviewer, presence: true
	validates :description, presence: true
end
