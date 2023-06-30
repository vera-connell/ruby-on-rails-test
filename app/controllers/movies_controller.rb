class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  
  #Get all movies 
  def index
    @movies = Movie.all
    render json: @movies
  end

  #Get a movie 
  def show
    render json: @movie
  end

  #Create a movie 
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render json: @movie, status: :created
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  #Edit a movie 
  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  #Edit a movie 
  def destroy
    @movie.destroy
    head :no_content
  end

  private

  #Get a movie and set it as @movie
  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.permit(:movie, :character)
  end

end
