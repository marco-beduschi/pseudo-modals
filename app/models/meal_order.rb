class MealOrder < ApplicationRecord
  belongs_to :burger
  belongs_to :french_fry
  belongs_to :drink
end
