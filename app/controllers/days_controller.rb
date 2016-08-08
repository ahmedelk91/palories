class DaysController < ApplicationController
  def index
    @days = Day.all
    @days.order!(created_at: :desc)
  end

  def show
    @day = Day.find(params[:id])
  end

  def edit
    @day = Day.find(params[:id])
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.new(day_params)

    if @day.save
      redirect_to @day
    else
      render 'new'
    end
  end

  def update
    @day = Day.find(params[:id])

    if @day.update(day_params)
      redirect_to @day
    else
      render 'edit'
    end
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy

    redirect_to days_path
  end

  private
  def day_params
    params.require(:day).permit(:date, :total_calories, :day_id)
  end
end
