class DaysController < ApplicationController
  def index
    @days = Day.all
    @days.order!(created_at: :desc)
  end

  def show
    @day = Day.find(params[:id])
    @meals = @day.meals.where.not(id: nil)
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

  def create
    @day = Day.create!(day_params.merge(user: current_user))
    redirect_to day_path(@day)
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

  def destroy
  @day = Day.find(params[:id])
  if @day.user == current_user
    @day.destroy
  else
    flash[:alert] = "Only registered users can delete days"
  end
  redirect_to days_path
end

private
  def day_params
    params.require(:day).permit(:date, :day_id)
  end
end
