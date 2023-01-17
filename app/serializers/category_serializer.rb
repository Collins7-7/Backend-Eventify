class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :created_at
  has_many :events
end
