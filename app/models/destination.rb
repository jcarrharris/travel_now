class Destination < ActiveRecord::Base
  attr_accessible :category, :continent, :cost, :country, :description, :name, :rating,:photo
end
