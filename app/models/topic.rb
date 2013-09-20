class Topic < Post
  has_many :responses

  POST_TYPES = %w[Info Discussion Question]

  validates_inclusion_of :post_type, in: POST_TYPES

  default_scope order('updated_at DESC')
  scope :recent, -> { order('updated_at ASC') }

  def self.post_types
    POST_TYPES
  end

end
