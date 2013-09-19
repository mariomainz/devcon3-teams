class Topic < Post

  attr_accessible :title

  belongs_to :user
  has_many :responses
end
