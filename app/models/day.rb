class Day < ApplicationRecord
  has_many :meals, dependent: :destroy
  belongs_to :user
  validates :date, presence: true,
  length: { minimum: 5 }

# nice helper method!
#helper method
  def total_day_calories
    total_calories = 0
    day_meals = self.meals

    day_meals.each do |meal|
      total_calories += meal.calories
    end

    return total_calories
  end

end
