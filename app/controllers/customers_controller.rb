require_relative '../models/customer.rb'
require_relative '../views/customers_view.rb'

class CustomersController
  def initialize(customers_repository)
    @customers_repository = customers_repository
    @customers_view = CustomersView.new
  end

  def add
    name = @customers_view.ask_user_for_name
    address = @customers_view.ask_user_for_address
    customer = Customer.new(name: name, address: address)
    @customers_repository.create(customer)
    display_customers
  end

  def list 
    display_customers
  end


  private

  def display_customers
    customers = @customers_repository.all
    @customers_view.display(customers)
  end
end