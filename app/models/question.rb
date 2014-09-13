class Question < ActiveRecord::Base

  validates :title, presence: true, length: { minimum: 20, maximum: 150 }
  validates :content, presence: true, length: { minimum: 200, maximum: 5000}
  validates :city, presence: true
  validates :email, presence: true
  validates :phone, presence: true

  has_many :answers

end
