class Event < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
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
  validates :category, presence: true
end
