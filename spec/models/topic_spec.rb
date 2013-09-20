require 'spec_helper'

describe Topic do

  it {
    should ensure_inclusion_of(
      :post_type
    ).in_array(%w[Solution Discussion Question])
  }

end
