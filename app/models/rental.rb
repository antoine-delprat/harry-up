class Rental < ApplicationRecord
  belongs_to :renter, class_name: 'User'
  belongs_to :accessory
  validates :status, inclusion: { in: %w(Accepted Pending Rejected) }
end
