puts "reading celsius from temp.data..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius.to_i * 9 / 5) + 32
puts "The number is " + num
print "Result: "
print fahrenheit
puts "."