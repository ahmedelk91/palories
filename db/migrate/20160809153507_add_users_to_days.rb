class AddUsersToDays < ActiveRecord::Migration[5.0]
  def change
    # nice connecting migration to devise user
    add_reference :days, :user, foreign_key: true
  end
end
