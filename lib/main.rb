require "pry"

require "themoviedb"

require "sinatra"
require "sinatra/reloader"


Tmdb::Api.key("781bcabe2a1a8e4e82c01b05c3fa160c")

# Home page of the database. Prompts the user with a search form.

get "/" do
  erb :search_form
end

# Performs the search and provides backend with user's input
post "/" do
@movie = Tmdb::Movie.find(params[:query])
  
  movie.id = params["movie.id"]
  movie.title = params["movie.title"]
  movie.tagline = params["movie.tagline"]
  movie.imdb_id = params["movie.imdb_id"]
  movie.genres = params ["movie.genres"]
  movie.popularity = params["movie.popularity"]
  movie.release_date = params["movie.realease_date"]
  movie.runtime = params["movie.runtime"]
end
  

# Takes user to the Movie they are searching for.
get "/:search" do
  
  

erb :selection
end

# binding.pry

