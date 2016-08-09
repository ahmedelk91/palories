class AddUsersToDays < ActiveRecord::Migration[5.0]
  def change
    add_reference :days, :user, foreign_key: true
  end
end
