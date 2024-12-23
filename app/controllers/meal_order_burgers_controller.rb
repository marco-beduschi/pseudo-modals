class MealOrderBurgersController < ApplicationController
  def new
    @meal_order = MealOrder.find(params[:meal_order_id])
    @meal_order_burger = MealOrderBurger.new(
      meal_order: @meal_order
    )
  end

  def create
    @meal_order = MealOrder.find(params[:meal_order_id])
    @meal_order_burger = MealOrderBurger.new(
      meal_order: @meal_order,
      burger_id: params[:meal_order_burger][:burger_id]
    )

    if @meal_order_burger.save
      redirect_to meal_order_path(@meal_order)
    else
      render @meal_order_burger
    end
  end
end
