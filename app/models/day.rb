class Day < ApplicationRecord
  has_many :meals, dependent: :destroy
  belongs_to :user
  validates :date, presence: true,
            length: { minimum: 5 }
end
