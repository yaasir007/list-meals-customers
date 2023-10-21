class CustomersView
  def ask_user_for_name
    puts "What is the name for the customer"
    print "> "
    return gets.chomp
  end

  def ask_user_for_address
    puts "What is the address for the customer"
    print "> "
    return gets.chomp
  end

  def display(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1}. #{customer.name} : #{customer.address}"
    end
  end
end