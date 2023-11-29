class Category < ApplicationRecord
  has_many :event_categories
  has_many :events, through: :event_categories

  def name_with_icon
    "#{icon} #{name}".html_safe
  end
end
