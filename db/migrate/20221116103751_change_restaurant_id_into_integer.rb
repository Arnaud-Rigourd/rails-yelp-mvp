class ChangeRestaurantIdIntoInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :reviews, :restaurant_id, :integer
  end
end
