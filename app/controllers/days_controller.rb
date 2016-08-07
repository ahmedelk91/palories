class DaysController < ApplicationController
  def show
    @day = Day.find(params[:id])
  end

  def new
  end

  def create
    @day = Day.new(day_params)

    @day.save
    redirect_to @day
  end
end

  private
  def day_params
    params.require(:day).permit(:date, :total_calories)
  end
