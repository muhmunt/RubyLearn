puts "Please enter name"
name = gets.chomp
# chomp -> to String
puts "Enter Password"
pass = gets.to_i
# to_i -> to Integer
print "Enter first number(float)"
number1 = gets.to_f
# to_f -> to float
print "Enter second number(integer)"
number2 = gets.to_i
# to_i -> to integer
puts "Name #{name}, Pass #{pass}"
puts "Divition: #{number1 / number2}"