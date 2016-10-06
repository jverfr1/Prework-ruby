
## Método para el desplazamiento de caracteres.
def shift(char, n)
  char =char.ord
  if char == 97
	char = 122.chr
  elsif char == 65
	char = 90.chr
  elsif
  char = char + n
  
  char = char.chr 
  end	 	 
end

## Método que traduce un string dado
def ceasar_cipher()
  puts "Por favor, introduza mensaje a descifrar"
  message = gets.chomp
  puts "Por favor, introduza el desplazamiento deseado"
  n=gets.chomp
  if n==""
    n=3
  else
    n = n.to_i
  end
  ##puts message
  array_original=[]
  array_descifrado=[]
  array_original = message.split(" ")
  ##array_original = message.split(/\W+/) 
  array_descifrado = array_original.collect do |a| a.chars end
    
  array_descifrado.collect! do |a| a.collect do |b| b = shift(b, n) end end
    
  array_descifrado.collect! do |a| a end
	
  puts "\n ORIGINAL: #{array_original}"

  puts "\n DESCIFRADO: #{array_descifrado}"

  mnsj= array_descifrado.collect do |a| a.join("") end
  ##print "Frase entera: #{mnsj}\n"
  print "Frase entera: "
  mnsj.each do |a| print "#{a} " end
    
end

ceasar_cipher()
