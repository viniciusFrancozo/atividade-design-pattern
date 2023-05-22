class RatingsObserver
    def initialize(movie)
      @movie = movie
    end
  
    def update_average_rating
      @movie.update_columns(rate: @movie.ratings.average(:rate))
    end
  end
  