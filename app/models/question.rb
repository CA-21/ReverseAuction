class Question < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 20, maximum: 150 }
  validates :content, presence: true, length: { minimum: 200, maximum: 5000}

end
