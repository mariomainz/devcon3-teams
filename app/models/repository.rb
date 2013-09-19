class Repository < ActiveRecord::Base
  belongs_to :team

  validates_uniqueness_of :link
  validates :link, :format => URI::regexp(%w(http https))
end
