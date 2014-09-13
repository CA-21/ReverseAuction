class Answer < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  validates :estimated_fee, presence: true
  validates :estimated_time, presence: true

  belongs_to :question
  belongs_to :lawyer
end
