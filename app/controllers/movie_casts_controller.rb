class MovieCastsController < ApplicationController
  before_action :set_movie_cast, only: %i[ show update destroy ]

  # GET /movie_casts
  def index
    @movie_casts = MovieCast.all

    render json: @movie_casts
  end

  # GET /movie_casts/1
  def show
    render json: @movie_cast
  end

  # POST /movie_casts
  def create
    @movie_cast = MovieCast.new(movie_cast_params)

    if @movie_cast.save
      render json: @movie_cast, status: :created, location: @movie_cast
    else
      render json: @movie_cast.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_casts/1
  def update
    if @movie_cast.update(movie_cast_params)
      render json: @movie_cast
    else
      render json: @movie_cast.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movie_casts/1
  def destroy
    @movie_cast.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_cast
      @movie_cast = MovieCast.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_cast_params
      params.require(:movie_cast).permit(:actor_id, :movie_id)
    end
end
