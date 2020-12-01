class Post < ApplicationRecord
  belongs_to :user
  
  validates :title, presence: true, length: { minimum: 10, maximum: 50 }
  validates :author_name, presence: true, length: { minimum: 4, maximum: 50 }
  validates :body, presence: true, length: { maximum: 500 }    
end
