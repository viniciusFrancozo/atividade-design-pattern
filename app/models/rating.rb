class Rating < ApplicationRecord
  belongs_to :movie

  after_commit :update_average_ratings, on: [:create, :update]

  def update_average_ratings
    RatingsObserver.new(movie).update_average_rating
  end
end
