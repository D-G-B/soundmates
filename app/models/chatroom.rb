class Chatroom < ApplicationRecord
  has_many :user_chats
  has_many :users, through: :user_chats

  has_many :messages

  validates :status, presence: true, inclusion: { in: ["Pending", "Denied", "Accepted"] }
end
