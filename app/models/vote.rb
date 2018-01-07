# == Schema Information
#
# Table name: votes
#
#  id          :integer          not null, primary key
#  answer_id   :integer
#  question_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Vote < ApplicationRecord
  belongs_to :answer
  belongs_to :question
  belongs_to :user
end
