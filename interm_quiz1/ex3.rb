# ex3.rb

# The only thing wrong is the quantity can now be modified from
# outside the class

class InvoiceEntry
  attr_reader :product_name
  attr_accessor :quantity
  
  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0
  end
end