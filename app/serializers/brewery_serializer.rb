class BrewerySerializer < ActiveModel::Serializer

  attributes :id, :name, :type, :street, :city, :longitude, :latitude, :phone, :url
  has_many :reviews


end
