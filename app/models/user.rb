class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_create :remove_blank_genre_ids
  before_create :remove_blank_skill_ids

  has_many :user_genres, dependent: :destroy
  has_many :genres, through: :user_genres

  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills

  has_many :user_chats, dependent: :destroy
  has_many :chatrooms, through: :user_chats

  has_many :messages, dependent: :destroy
  has_many :shares, dependent: :destroy

  # cloudinary with active storage
  has_one_attached :photo
  #has_many_attached :photos

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, uniqueness: true
  validates :bio, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }

  private

  def remove_blank_genre_ids
    return if genre_ids.blank?
    self.genre_ids = genre_ids.reject(&:blank?)
  end

  def remove_blank_skill_ids
    return if skill_ids.blank?
    self.skill_ids = skill_ids.reject(&:blank?)
  end
end
