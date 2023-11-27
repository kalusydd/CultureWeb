class Chatroom < ApplicationRecord
  belongs_to :event
  has_many :messages, dependant: :destroy
end
