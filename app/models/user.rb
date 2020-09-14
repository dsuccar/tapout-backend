class User < ApplicationRecord
  has_many :reviews
  has_many :breweries, through: :reviews

end
