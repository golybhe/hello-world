# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'imdb'

	search = Imdb::Search.new("woman")
	search.movies.each do |movie|
		Film.create(title: movie.title, plot: movie.plot, year: movie.year, poster: movie.poster)
	end


# get '/' do 
# 	@movies=[]
# 	erb :movies
# end

# def select movies
# 	tmp_movies = []
# 	movies.each do |movie|
# 		if movie.poster != ""
# 			tmp_movies.push(movie) 
# 		end
# 	end
# 	tmp_movies
# end

