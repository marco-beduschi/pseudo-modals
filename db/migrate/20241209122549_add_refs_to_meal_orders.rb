class AddRefsToMealOrders < ActiveRecord::Migration[8.0]
  def change
    add_reference :meal_orders, :burger, null: true, foreign_key: true
    add_reference :meal_orders, :french_fry, null: true, foreign_key: true
    add_reference :meal_orders, :drink, null: true, foreign_key: true
  end
end
