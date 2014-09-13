class Answer < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 50, maximum: 150 }
  validates :content, presence: true, length: { minimum: 200, maximum: 5000 }
  validates :estimated_fee, presence: true, numericality: true
  validates :estimated_time, presence: true

  belongs_to :question
end
