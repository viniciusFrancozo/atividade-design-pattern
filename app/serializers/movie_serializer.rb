class MovieSerializer < ActiveModel::Serializer
  attributes :id, :tittle, :rate, :description, :summary
end
