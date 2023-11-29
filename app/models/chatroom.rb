class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :event
  has_many :user
end
