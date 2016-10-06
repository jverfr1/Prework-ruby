require 'date'

## Clase para redondar a un nº determinado de decimales
## Source: http://www.elclubdelprogramador.com/2012/11/27/ruby-lo-que-debes-saber-cuando-trabajas-con-numeros-en-rubyii-parte/
class Float
  def redondear(decimales)
    temp = self.to_s.length
    sprintf("%#{temp}.#{decimales}f",self).to_f
  end
end
#Clase tienda
class ShoppingCart
 
  def initialize
  	@items = []
  end
#Añade el item que se le pase como parámetro al carro.
  def add_item(item)
  	@items.push(item)	
  end
#Lista los items que hay en el carro de la compra
  def get_list
  	@items
  end
#Saca el precio de la suma de todos los productos que hay en el carro de la compra
  def checkout 
    number_items = 0
    total = 0
    puts "ITEMS    PRECIO"
    puts ""

    get_list.each {
    	|a| total += a.price    	
              number_items += 1
              puts "#{a.name}    $#{a.price}"

    }

    if number_items > 5
    	total_sin_redondeo = 0.9 * total
    	total = total_sin_redondeo.redondear(2)
    end

    puts "You are taking #{number_items} items"
    puts "Your total today is $#{total}. Have a nice day!"

  end
end  		
  	

class Item
	#Método para inicializar un objeto clase Item
	def initialize(name, price)
	  @name = name
	  @price = price
	end
    public
    #Devuelve el precio
	def price
		@price
	end
	#Devuelve el nombre
	def name
	    @name
	end

end
#Hereda de Item
class Houseware < Item
	#Devuelve precio, según condiciones aplica descuento
	def price
		price = @price
		if price > 100
			price = 0.95 * price
	
	    else @price
	    end
			
	end
end
#Hereda de Item
class Fruit < Item
	#Devuelve precio, según condiciones aplica descuento
	def price
        price = @price
		if Date.today.wday == 0 || Date.today.wday == 6
			price = 0.90 * price
			
		else
			@price
		end
	end
end

#Pruebas

 bananas = Fruit.new("Bananas", 10)
puts bananas.price
 vacuum = Houseware.new("Vacuum Cleaner", 150)



joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)
puts "El precio del zumo de naranja es #{oj.price}"
puts joshs_cart.instance_of?(ShoppingCart)
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(vaccuum)
joshs_cart.add_item(banana)
joshs_cart.add_item(anchovies)
joshs_cart.add_item(oj)

puts ""
joshs_cart.checkout

