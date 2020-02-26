lemari = ["Buku","Handphone","Pensil","Baju","Flashdrive"]
tas = []

puts "===== lemari ====="
puts lemari.delete_at(1)
puts lemari.delete_at(2)
puts '===== tas ====='
puts tas.push(lemari)

puts '=================='
array1 = [1,2,3,4,5,6,7,8,9]
array2 = [1,7,6,0]

array1.pop(3)
9.downto(7) do |x|
    array1.unshift(x)
end
puts '===== array 1 ====='
puts "#{array1}"
puts '===== array 2 ====='
array2.delete(1)
array2.push(1)
puts "#{array2}"

puts '=================='
buah = {apel: 5000, nanas: 10000, semangka: 20000, jeruk: 4000, anggur:6000}
puts "Masukkan jumlah Apel : "
apel = gets.to_i
puts "Masukkan jumlah Nanas : "
nanas = gets.to_i
puts "Masukkan jumlah Semangka : "
semangka = gets.to_i
puts "Masukkan jumlah Jeruk : "
jeruk = gets.to_i
puts "Masukkan jumlah Anggur : "
anggur = gets.to_i

t_apel = apel * buah[:apel]
t_nanas = nanas * buah[:nanas]
t_semang = semangka * buah[:semangka]
t_jeruk = jeruk * buah[:jeruk]
t_anggur = anggur * buah[:anggur]
total = t_apel + t_jeruk + t_nanas + t_semang + t_anggur 

if total > 50000
    diskon = total * 10 /100
    total = total - diskon
end

if apel > 0
    puts "Apel = #{t_apel}"
end

if semangka > 0
    puts "Semangka = #{t_semang}"
end

if nanas > 0
    puts "Nanas = #{t_nanas}"
end

if jeruk > 0
    puts "Jeruk = #{t_jeruk}"
end

if anggur > 0
    puts "Anggur = #{t_anggur}"
end

puts '=========== total harga ==========='
puts total