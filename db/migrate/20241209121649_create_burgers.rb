class CreateBurgers < ActiveRecord::Migration[8.0]
  def change
    create_table :burgers do |t|
      t.string :name, null: false
      t.decimal :price, null: false

      t.timestamps
    end
  end
end
