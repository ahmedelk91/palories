class DailyConsumption < ActiveRecord::Base
  has_many: meals
  belongs_to: day
end
