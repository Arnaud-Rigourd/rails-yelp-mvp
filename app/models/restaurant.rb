class Restaurant < ApplicationRecord
  ACCEPTEDCAT = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates_inclusion_of :category, in: ACCEPTEDCAT
end
