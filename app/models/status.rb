class Status < ActiveRecord::Base
  set_table_name "status"
  belongs_to :user

  validates_length_of :content, :maximum => 255
end
