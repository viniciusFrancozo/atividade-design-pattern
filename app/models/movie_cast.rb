class MovieCast < ApplicationRecord
  belongs_to :actor
  belongs_to :movie
  belongs_to :director
end
