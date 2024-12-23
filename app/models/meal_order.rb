class MealOrder < ApplicationRecord
  belongs_to :burger, optional: true
  belongs_to :french_fry, optional: true
  belongs_to :drink, optional: true
  has_one :meal_order_burger
end
