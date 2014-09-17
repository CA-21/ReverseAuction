class Question < ActiveRecord::Base

  validates :title, presence: true, length: { minimum: 20, maximum: 150 }
  validates :content, presence: true, length: { minimum: 200, maximum: 5000}
  validates :city, presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :phone, presence: true, length: { maximum: 12 }, numericality: true


  has_many :answers, dependent: :destroy

end
