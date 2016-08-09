class AddTotalCaloriesToDays < ActiveRecord::Migration[5.0]
  def change
      add_column :days, :total_calories, :integer
    end
  end
