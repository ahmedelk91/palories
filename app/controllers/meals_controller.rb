class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def create
    @day = Day.find(params[:day_id])
    @meal = @day.meals.create(meal_params)
    redirect_to day_path(@day)
  end

  def destroy
    @day = Day.find(params[:day_id])
    @meal = @day.meals.find(params[:id])
    @meal.destroy
    redirect_to day_path(@day)
  end

  def show
    @day = Day.find(params[:id])
    @meal = @day.meal.find(params[:id])
  end

  private
  def meal_params
    params.require(:meal).permit(:description, :calories, :serving_size, :color)
  end
end
