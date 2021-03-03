class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_genres
  has_many :genres, through: :user_genres

  has_many :user_skills
  has_many :skills, through: :user_skills

  has_many :user_chats
  has_many :chatrooms, through: :user_chats

  has_many :messages
  has_many :shares

  # cloudinary
  # has_one_attached :photo
  has_many_attached :photos

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :bio, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
end
