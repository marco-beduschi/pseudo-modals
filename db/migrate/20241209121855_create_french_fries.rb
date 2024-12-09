class CreateFrenchFries < ActiveRecord::Migration[8.0]
  def change
    create_table :french_fries do |t|
      t.string :size, null: false
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
