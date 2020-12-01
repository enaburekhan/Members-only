class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  
  validates :username, presence: true, uniqueness: { case_sensitive: false }
 
  validates :email, presence: true
 
  has_many :posts         
end
