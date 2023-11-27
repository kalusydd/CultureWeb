class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages
  has_many :chatrooms, through: :messages
  # what about bookings where they are the organiser? has_many :bookings, through :events ???

  validates :username, presence: true, uniqueness: true
end
