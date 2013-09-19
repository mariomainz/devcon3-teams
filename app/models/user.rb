class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :last_name, :first_name, :email, :role

  has_many :topics
  has_many :responses
  has_and_belongs_to_many :teams
end
