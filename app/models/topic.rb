class Topic < Post
  has_many :responses

  scope :recent, -> { order('updated_at DESC') }
end
