class Event < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependant: :destroy
  has_one :chatroom
  # has_many :messages, through: :chatroom ??

  validates :title, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :description, presence: true
  validates :venue_name, presence: true
  validates :venue_address, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
end
