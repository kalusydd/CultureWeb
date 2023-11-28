class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
  has_many :chatrooms, through: :messages
  has_many :events
  has_many :bookings
  has_many :bookings_as_org, through: :events, source: :bookings

  validates :username, presence: true, uniqueness: true
end
