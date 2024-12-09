class CreateMealOrderDrinks < ActiveRecord::Migration[8.0]
  def change
    create_table :meal_order_drinks do |t|
      t.references :meal_order, null: false, foreign_key: true
      t.references :drink, null: false, foreign_key: true

      t.timestamps
    end
  end
end
