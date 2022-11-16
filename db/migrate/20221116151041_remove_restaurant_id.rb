class RemoveRestaurantId < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :restaurant_id
  end
end
