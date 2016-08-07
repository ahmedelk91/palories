class Day < ApplicationRecord
  validates :date, presence: true,
            length: { minimum: 5 }
end
