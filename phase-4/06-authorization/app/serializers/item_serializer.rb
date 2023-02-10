class ItemSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :name, :price
  has_one :user
end
