class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show]

  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.create(movie_params)
    render 'index', message: 'Movie saved'
  end

  def show
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :director, :rate)
  end

  def set_movie
    @movie = Movie.find_by_id(params[:id])
  end
end
