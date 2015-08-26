# ex2.rb

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    # the mistake here is we don't have a setter 
    # method for quantity property because the flag 'attr_reader'
    # only give us a getter method !
    # quantity = updated_count if updated_count >= 0
    @quantity = updated_count if updated_count >= 0
  end
end

