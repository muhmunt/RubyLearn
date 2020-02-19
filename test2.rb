hari = "Senin"
puts '---'
# Ubah variable itu menjadi caplock
# puts hari.upcase!
# 
# puts hari.reverse!

# puts 'Masukkan hari : '
# hari = gets.chomp
# ganti = "Hari ini adalah hari #{hari}"
# puts "Hari ini adalah hari #{hari}".gsub('hari',hari)
# puts ganti.gsub('hari', hari)

def fungsi(item)
    4.downto(0) do |x|
        puts item[x]
    end
end
array1 = ['Siapa','Rumah','Lokasi','Disana','Daerah']
fungsi(array1)

puts '-----'

def fungsi(*item)
    4.downto(0) do |x|
        puts item[x]
    end
end
# array1 = ['Siapa','Rumah','Lokasi','Disana','Daerah']
fungsi('Siapa','Rumah','Lokasi','Disana','Daerah')

def set(a, b, c, d)
    puts b,d,c,a
end

data = ['Hutan','Gunung','Pantai','Jalanan']
set(*data) # menggunakan * 

puts '---'
array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

puts array[14]
puts array[3] = "a b c"
puts array[0] = 1.5

puts "#{array}"
array.delete_at(10)
puts "#{array}"
array[11] = 'd'
array[12] = 'd'
array[13] = 'd'
array[14] = 'd'
puts "#{array}"
puts "#{array}".gsub("1",'')

arr = []
4.upto(9) do |x|
    puts arr.push(x)
end

arr.delete_if do |x|
    x > 7
end 
puts arr
puts arr.join('X')