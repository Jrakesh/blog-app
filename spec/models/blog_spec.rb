# == Schema Information
#
# Table name: blogs
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  title               :string
#  body                :text
#  publish             :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Blog, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
