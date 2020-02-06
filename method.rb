# Def - Definition
def halo
    puts 'Hello World'
end

halo

# Def with Return
def hai
    return 'Saya disini' #memaksa -> output
    return 'Aku'
    'Saya disana'
end
puts hai

# Def return with manipulation
puts hai.reverse

# Parameter
def numeric(angka1, angka2)
    puts angka1 + angka2
end
numeric(3, 9)

# Default Parameter
def surat(nama = 'agam', email='username@gmail.com')
    puts "#{nama} #{email}"
end
surat('Syah')
surat('Hunus','Unim@gmail.com')

# Plain Parameter
def kirim(nama: 'Mou', email: 'usergmail.com')
    puts "#{nama} #{email}"
end
kirim(nama: 'Agam',email: 'cek@gmail.com')
kirim(nama: 'ceksd',email: 'Agam@gmail.com')

# Variable sebagai method
cetak = Proc.new do 
    puts 'Cetak kata'
end

cetak = Proc.new do 
    puts 'Cetak kata'
end

cetak.call()
# variable sebagai method with parameter
methode = Proc.new do|nama, user|
    puts nama
    puts user
end
methode.call('Agam','User')
methode['Muhammad','Yusril']

# pembagian
pembagian = -> (angka1, angka){
    angka1 / angka
}

puts pembagian.call(10,2)

# Splat method
def menu(*item)
    puts item[0]
    puts item[2]
    puts item[1]
    puts item[3]
end

array1 = ['Siapa','Rumah','Lokasi','Disana']
menu(array1)
menu('Siapa','Dimana','Rumah','Lokasi')

puts ''