class Flat < ApplicationRecord
  GUESTS_NUM = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  validates :name, :address, :description, presence: true
  validates :number_of_guests, inclusion: { in: GUESTS_NUM,
    message: "%{value} is not a valid guests number" }
  validates :number_of_guests, :price_per_night, numericality: true
end
