class MealOrdersController < ApplicationController
  def new
    @meal_order = MealOrder.new
  end

  def create
    @meal_order = MealOrder.new

    if @meal_order.save
      redirect_to @meal_order
    else
      render "new", status: :unprocessable_entity
    end
  end

  def show
    @meal_order = MealOrder.find(params[:id])
  end
end
