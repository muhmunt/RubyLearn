10.times do |f|
    puts f
end

10.times do
    puts 'loop'
end

# Time with index
10.times do |x|
    puts x
end

# Time with gets

3.times do
    print 'masukkan kata :'
    a = gets.chomp
    puts a
end

# One line times

3.times do puts 'One line times' end
3.times {puts 'One line times'}

# Ascending loop

1.upto(7) do |x|
    puts "Ascending #{x}"
end

# Descending looop

8.downto(3) do |x|
    puts "Descending #{x}"
end

# While
total = 1
while total < 5 do 
    puts "total #{total}"
    total +=1
end