class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :accessories, foreign_key: :owner_id
  has_many :rentals, foreign_key: :renter_id
  has_one_attached :avatar
end
