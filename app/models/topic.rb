class Topic < Post
  belongs_to :user
  has_many :responses
end
