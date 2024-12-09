class MealOrdersController < ApplicationController
  def new
    @meal_order = MealOrder.new
  end
end
