class Lawyer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: { minimum: 10, maximum: 50 }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :registration_number, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :city, presence: true


  has_many :answers, dependent: :destroy

  def to_s
    "#{self.name}, #{self.city}, #{self.registration_number}"
  end

  def admin?
    self.admin
  end
end
