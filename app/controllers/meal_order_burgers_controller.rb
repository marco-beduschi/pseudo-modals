class MealOrderBurgersController < ApplicationController
  def new
    @meal_order = MealOrder.find(params[:meal_order_id])
    @meal_order_burger = MealOrderBurger.new(
      meal_order: @meal_order
    )
  end
end
