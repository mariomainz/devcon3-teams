class User < ActiveRecord::Base

  attr_accessible :last_name, :first_name, :email, :role

  has_many :topics
  has_many :responses
  has_and_belongs_to_many :teams
end
