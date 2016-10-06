def sorting(sentence=gets.chomp)
    sentence.downcase
    array = []
    array = sentence.split(/\W+/).sort { |a,z| a.downcase <=> z.downcase }
	puts "\nA-Z: #{array}"
    
end


sorting()

