class ShakShop
  def initialize
  	@shake_list = []
  end

  def add_milkshakes(milkshake)
  	@shake_list.push(milkshake)
  end

  def checkout_milkshakes
  	@shake_list.each do |milkshakes|
  		print "#{milkshakes} - #{milkshakes.total_price_of_milkshake}€. "
  	end
  end
  		
end

class MilkShake
  attr_reader :price_of_milkshake
  def initialize
	@base_price = 3
	@ingredients = []
  end

  def add_ingredient(ingredient)
  	@ingredients.push(ingredient)
  end

  def price_of_milkshake
  	#Let's establish what our counter should be before we start adding ingredients into the mix
    total_price_of_milkshake = @base_price
    #Add each ingredients price to our total
    @ingredients.each do |ingredient|
    	total_price_of_milkshake += ingredient.price
    end
    # Return our total price to whoever called for it
    total_price_of_milkshake
    	
  end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
	@name = name
	@price = price
  end
end

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana",2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

puts nizars_milkshake.price_of_milkshake

cheesecake_shake = MilkShake.new
milk = Ingredient.new("Milk", 1)
cheesecake_flavor = Ingredient.new("CheeseCake Flavor", 3)
cheesecake_shake.add_ingredient(milk)
cheesecake_shake.add_ingredient(cheesecake_flavor)

puts cheesecake_shake.price_of_milkshake
shak_list = ShakShop.new
shak_list.add_milkshakes(cheesecake_shake)
shak_list.add_milkshakes(nizars_milkshake)

puts shak_list.checkout_milkshakes