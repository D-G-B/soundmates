class Skill < ApplicationRecord
  has_many :user_skills
  has_many :users, through: :user_skills
end
