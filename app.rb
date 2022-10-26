class Product
  attr_reader :name, :color, :price, :brand, :warranty
  attr_writer :name, :color, :price, :brand, :warranty

  def initialize(input)
    @name = input[:name]
    @color = input[:color]
    @price = input[:price]
    @brand = input[:brand]
    @warranty = input[:warranty]
  end

  def print_name
    puts "#{name} is the product you're looking for."
  end

  def print_color
    puts "This product is #{color}."
  end

  def delete_name
    @name = ""
  end
end

product1 = Product.new(name: "Xbox", color: "white", price: 200, brand: "Microsoft", warranty: 2)
product1.delete_name
pp product1
