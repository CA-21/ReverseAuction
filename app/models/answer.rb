class Answer < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 10, maximum: 200 }
  validates :content, presence: true, length: { minimum: 200, maximum: 5000}
  validates :estimated_fee, presence: true, numericality: true
  validates :estimated_time, presence: true, length: { maximum: 30 }

  belongs_to :question
  belongs_to :lawyer
end
