class CreateMealOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :meal_orders do |t|
      t.timestamps
    end
  end
end
