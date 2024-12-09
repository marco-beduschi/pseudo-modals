class MealOrderDrink < ApplicationRecord
  belongs_to :meal_order
  belongs_to :drink
end
