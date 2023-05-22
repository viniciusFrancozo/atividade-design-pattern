class Movie < ApplicationRecord
    has_many :movie_casts
    has_many :ratings
    has_many :movies, through: :movie_casts

    after_save_commit { ReviewObserver.new_movie_rated(self) }
end
