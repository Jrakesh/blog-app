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

class Blog < ActiveRecord::Base
	belongs_to :user
	has_many :shares
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  	validates :title, presence: true

  scope :recent_ten, -> { order(updated_at: :desc).limit(10) }
  scope :published, -> { where(publish: true) }
end
