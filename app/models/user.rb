class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_genres
  has_many :genres, through: :user_genres

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
