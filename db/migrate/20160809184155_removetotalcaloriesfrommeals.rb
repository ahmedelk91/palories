# remember to use snake case for generated migration names ie 'remove_total_calories_from_meals'
class Removetotalcaloriesfrommeals < ActiveRecord::Migration[5.0]
  def change
    remove_column :meals, :total_calories, :integer
    # way to use a migration to adapt your model to your problem domain
  end
end
