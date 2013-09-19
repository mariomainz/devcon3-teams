class Team < ActiveRecord::Base

  has_many :repositories
  has_and_belongs_to_many :users

  # scopes
  scope :recent_creation, -> { order("team.created_at DESC") }
end
