class Status < ActiveRecord::Base
  belongs_to :user

  validates_length_of :content, :maximum => 255
end
