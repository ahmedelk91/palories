class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :description
      t.integer :calories
      t.string :serving_size
      t.string :color
      t.references :day, foreign_key: true

      t.timestamps
    end
  end
end
