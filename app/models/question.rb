# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Question < ApplicationRecord
	belongs_to :user

	has_many :answers
	has_many :votes

	validates :title, presence: true
	validates :description, presence: true

	def voted_by?(user)
	  votes.exists?(user: user)
	end
end
