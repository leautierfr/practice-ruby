# computer = { color: "black", price: 1000, brand: "Microsoft", warranty: 2 }
# xbox = { :color => "white", :price => 200, :brand => "Microsoft", :warranty => 1 }
# playstation = { color: "white", price: 200, brand: "Sony", warranty: 1 }

# puts "Computers are #{computer[:color]}, sell for #{computer[:price]} dollars, are #{computer[:brand]} branded, and have a #{computer[:warranty]} year warranty."
# puts "Xboxes are #{xbox[:color]}, sell for #{xbox[:price]} dollars, are #{xbox[:brand]} branded, and have a #{xbox[:warranty]} year warranty."

class Product
  attr_reader :name, :color, :price, :brand, :warranty
  attr_writer :warranty

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
end

product1 = Product.new(name: "Xbox", color: "white", price: 200, brand: "Microsoft", warranty: 1)
product1.print_name
product1.print_color
product1.warranty = 2
p product1.warranty

