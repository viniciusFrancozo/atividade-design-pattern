class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show update destroy ]

  # GET /movies
  def index
    @movies = Movie.all

    render json: @movies, status: :ok
  end

  # GET /movies/1
  def show
    render json: {movie: @movie, movie_billboard: @movie_genre}, status: :ok
  end

  # POST /movies
  def create
    movieBuilder = Movies::Create.new
      .with_description(params[:description])
      .with_duration(params[:duration_time])
      .with_release_date(params[:release_date])
      .with_title(params[:tittle])
      .with_summary(params[:summary])

    @movie = movieBuilder.build

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      render json: @movie, status: :ok
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
      @movie_genre = MovieDecorator.new(@movie)
      @movie_genre = @movie_genre.with_drama
    end

    # Only allow a list of trusted parameters through.
    def movie_params
      params.require(:movie).permit(:tittle, :description, :summary)
    end
end
