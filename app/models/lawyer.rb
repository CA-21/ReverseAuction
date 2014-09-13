class Lawyer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :registration_number, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :city, presence: true

  has_many :answers, dependent: :destroy

  def admin?
    self.admin
  end
end
