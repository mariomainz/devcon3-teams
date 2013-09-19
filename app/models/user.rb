class User < ActiveRecord::Base
<<<<<<< Updated upstream
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :topics
  has_many :responses
=======

>>>>>>> Stashed changes
  has_and_belongs_to_many :teams
end
