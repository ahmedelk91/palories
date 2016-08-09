class Removetotalcaloriesfrommeals < ActiveRecord::Migration[5.0]
  def change
    remove_column :meals, :total_calories, :integer
  end
end
