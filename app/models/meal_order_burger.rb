class MealOrderBurger < ApplicationRecord
  belongs_to :meal_order
  belongs_to :burger
end
