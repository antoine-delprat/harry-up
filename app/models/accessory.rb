class Accessory < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_one_attached :photo

  CATEGORIES = %w(Brooms Wands Animals Others)

  validates :name, presence: true
  validates :detail, presence: true
  validates :price_per_day, presence: true
  validates :category, presence: true
  validates :photo, presence: true
end
