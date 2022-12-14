class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, length: { minimum: 4, maximum: 25 }
  validates :password, presence: true, length: { minimum: 8, maximum: 50 }
  validates :email, presence: true
end
