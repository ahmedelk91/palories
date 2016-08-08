class MealsController < ApplicationController

http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

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

  private
  def meal_params
    params.require(:meal).permit(:description, :calories, :serving_size, :color)
  end
end
