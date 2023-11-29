class Event < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_one :chatroom
  has_one_attached :photo
  has_many :event_categories
  has_many :categories, through: :event_categories
  # has_many :messages, through: :chatroom ??

  validates :title, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :description, presence: true
  validates :venue_name, presence: true
  validates :venue_address, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  # validates :category_ids, presence: true
end

# validate :validate_category_selection

# private

# def validate_category_selection
#   if category_ids.length < 1 || category_ids.length > 3
#     errors.add(:base, "Please select 1-3 categories.")
#   end
# end
