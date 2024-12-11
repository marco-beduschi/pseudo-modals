class CreateMealOrderFrenchFries < ActiveRecord::Migration[8.0]
  def change
    create_table :meal_order_french_fries do |t|
      t.string :name

      t.references :meal_order, null: false, foreign_key: true
      t.references :drink, null: false, foreign_key: true

      t.timestamps
    end
  end
end