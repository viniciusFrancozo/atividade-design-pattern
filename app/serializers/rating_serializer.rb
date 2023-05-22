class RatingSerializer < ActiveModel::Serializer
  attributes :id, :rate
  has_one :movie
end
