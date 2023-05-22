class Director < ApplicationRecord
    has_many :movie_casts
    has_many :movies, through: :movie_casts
end
