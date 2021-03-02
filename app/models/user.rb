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


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
