class Day < ApplicationRecord
  has_many :meals
  validates :date, presence: true,
            length: { minimum: 5 }
end
