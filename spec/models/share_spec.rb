# == Schema Information
#
# Table name: shares
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  blog_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Share, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
