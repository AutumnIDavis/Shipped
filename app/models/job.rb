class Job < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :boats, through: :bookings

# has_and_belongs_to_many :boats
belongs_to :user
validates :cost, numericality: { greater_than_or_equal_to: 1000 }
validates_uniqueness_of :name

end
