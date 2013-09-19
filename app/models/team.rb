class Team < ActiveRecord::Base
  has_many :repositories
  has_and_belongs_to_many :users

  validates_uniqueness_of :name

  # scopes
  scope :recent_creation, -> { order("team.created_at DESC") }

end
