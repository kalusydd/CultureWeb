class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
  has_many :chatrooms, through: :messages
  has_one_attached :photo
  # what about bookings where they are the organiser? has_many :bookings, through :events ???

  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true
end
