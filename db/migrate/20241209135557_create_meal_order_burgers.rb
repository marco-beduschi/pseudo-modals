class CreateMealOrderBurgers < ActiveRecord::Migration[8.0]
  def change
    create_table :meal_order_burgers do |t|
      t.references :meal_order, null: false, foreign_key: true
      t.references :burger, null: false, foreign_key: true

      t.timestamps
    end
  end
end
