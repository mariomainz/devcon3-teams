class Status < ActiveRecord::Base
  self.table_name = "status"
  belongs_to :user

  validates_length_of :content, :maximum => 255

  scope :recent, -> { order('updated_at DESC') }
end
