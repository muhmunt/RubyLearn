# Array Parameter

# def setarray(itemA, itemB, itemC)
#     puts itemA,itemB,itemC
# end
# arr1 = ['Barang','Thing','Device']
# setarray(*arr1)

# Array campur = ['Agam',1,:titikdua]

# puts Array campur

# Array kosong = []

# puts Array kosong

# Array
array = [1,2,3,4,5]

puts array
# edit array
array[3] = 10
puts array

array2 = ['A','B','C','D']
array2[1] = 'G'
puts array2

# delete method di Array
arr = ['A','B','A','A','C','D']
arr.delete('A')
puts arr

puts "====================\n"
arr = ['A','B','A','A','C','D']
arr[0] = [] #sembunyikan index 0
puts arr
puts arr.length #menghitung jumlah array

arr = ['A','B','A','A','C','D']
arr.delete_at(1) # delete_at() menghapus titik koordinat
arr.delete('A') # delete() menghapus nilainya
puts arr

puts"======================\n"
# Delete IF atau Eliminasi item
arr2 = [1,2,3,4,5,6,7]
arr2.delete_if do |nilai|
    nilai > 5 # menghapus lebih dari 5
    # nilai >= 5 #menghapus dari 5 dan seterusnya
end 
puts arr2
puts '======================'
arr3 = ['A','B','C']
arr3.delete_if do |nilai|
    nilai == 'A'
end
puts arr3
puts '======================'
# One line 
arr3.delete_if {|item|item == 'B'}
puts arr3
puts '======================'

# Join
puts [1,2,3,4,5,6].join(',')
puts [1,2,3,4,5,6].join()
puts [1,2,3,4,5,6].join('A')

puts '======================'
# Push and Pop
# 1. Push
arr = [1,2,3,4,5]
arr.push(6)
puts arr
arr.push(7,8,9)
puts arr
arr << 10
arr << 11
puts arr
puts '======================'
# 2.Pop #Menghapus jumlah item dari belakang
arr = [1,2,3,4,5]
arr.pop(1)
puts arr
arr = [1,2,3,4,5]
arr.pop(2)
puts arr
puts '======================'

# Unshift dan shift (tambah dan hapus dari depan)
# unshift (menambah) -> tambah item
# shift (menghapus) -> menghapus koordinat

arr = [1,2,3,4]
arr.unshift(0) #tambahkan 1 item : 0
arr.unshift(-2, -1) #tambahkan 2 item: -2 dan -1
puts arr
puts '======================'
arr.shift(1) #hapus 1 item dari depan
puts arr
puts '====================='

# Looping array 
arr = ['D','C','B','A','Z','N']
arr.each do |item|
    puts "item: #{item}"
end
puts "koordinat -1 "
# reverse looping
5.downto(0) do |x|
    puts arr[x]
end

# Kinds of array
array = [1,2,3,4,5]

puts array[0]
puts array[3]
puts array[9] #undefined printed as null

array[2] = 8
array[7] = 14 #tidak akan terisi diantara yang terisi akan empty

puts array

new_arr = %w(satu dua tiga empat lima)
puts new_arr