module DaysHelper

  def datepicker_input form, field
    content_tag :td, :data => {:provide => 'datepicker', 'date-format' => 'yyyy-mm-dd', 'date-autoclose' => 'true'} do
      form.text_field field, class: 'form-control', placeholder: 'YYYY-MM-DD'
    end
  end
  
  def color(day)
    colors = {}

    # Create variables to track total calories for the day
    green_calories = 0
    yellow_calories = 0
    red_calories = 0

    # Iterate over meals and sum the calories
    day.meals.each do |meal|
      if meal.color == "Green"
        green_calories += meal.calories
      elsif meal.color == "Yellow"
        yellow_calories += meal.calories
      elsif meal.color == "Red"
        red_calories += meal.calories
      end
    end

    if (green_calories + yellow_calories + red_calories) / 3 < green_calories
      return "Green"
    elsif (green_calories + yellow_calories + red_calories) / 3 < yellow_calories
      return "Yellow"
    elsif (green_calories + yellow_calories + red_calories) / 3 < red_calories
      return "Red"
    end


    return colors
  end
end
