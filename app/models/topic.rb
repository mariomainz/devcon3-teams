class Topic < Post
  has_many :responses

  default_scope order('updated_at DESC')
  scope :recent, -> { order('updated_at ASC') }
end
