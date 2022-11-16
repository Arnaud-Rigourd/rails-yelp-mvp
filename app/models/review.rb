class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
  # validates_inclusion_of :rating, in: 0..5
  validates_inclusion_of :rating, in: [0, 1, 2, 3, 4, 5], allow_nil: false
end
