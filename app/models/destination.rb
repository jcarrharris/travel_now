class Destination < ActiveRecord::Base
  attr_accessible :category, :continent, :cost, :country, :description, :name, :rating,:photo

  has_many :reviews
  has_many :users, :through => :reviews
end
