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

FactoryGirl.define do
  factory :share do
    
  end

end
