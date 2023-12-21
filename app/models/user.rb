class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password, presence: true, length: { minimum: 8 }
  validates :email, presence: true
  validates :name, presence: true, length: { maximum: 100 }

  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followed, through: :followed_users

  has_many :following_users, foreign_key: :followed_id, class_name: 'Follow'
  has_many :followers, through: :following_users

  has_many :posts
end
