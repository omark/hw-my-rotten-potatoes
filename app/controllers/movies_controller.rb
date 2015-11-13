class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    # will render app/views/movies/index.html.haml by default
  end
  def show
    id = params[:id]        # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # Should catch and rescue ActiveRecord::RecordNotFound exception
    # will render app/views/movies/show.html.haml by default
  end
end
