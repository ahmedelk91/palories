# way to use snake case in your generated migration name! ;)
class AddTotalCaloriesToDays < ActiveRecord::Migration[5.0]
  def change
    # see prev comment +1 a+
      add_column :days, :total_calories, :integer
    end
  end
