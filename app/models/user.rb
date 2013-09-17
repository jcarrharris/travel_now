class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, :on => :create

  has_many :reviews
  has_many :destinations, :through => :reviews

  acts_as_liker
end
