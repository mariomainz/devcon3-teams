class Topic < Post
  has_many :responses

  validates_inclusion_of :post_type, in: ['Question', 'Solution', 'Discussion']

  default_scope order('updated_at DESC')
  scope :recent, -> { order('updated_at ASC') }
end
