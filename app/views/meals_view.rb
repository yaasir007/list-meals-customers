class MealsView

  def ask_user_for_name
    puts "What is the name for the meal"
    print "> "
    return gets.chomp
  end

  def ask_user_for_price
    puts "What is the price for the meal"
    print "> "
    return gets.chomp.to_i
  end

  def display(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1}. #{meal.name} : #{meal.price}€"
    end
  end

end