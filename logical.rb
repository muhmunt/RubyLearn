puts !true
puts !!true
puts !!!true
puts !!!!true

# if
# elsif
# else
a = 'AGA'
if a == 'APA'
    puts 'Berhasil'
elsif a == 'AGA'
    puts 'canceled'
else 
    puts 'gagal'
end

# One Line if
# a == true ? puts 'a' : 'b'
puts 'Berhasil' if a == 'AGA'

# Unless Conditional
a = 'ABA'
puts 'Gagal' unless a == 'APA'

puts 'Masukkan Nilai anda'
nilai = gets.to_f

if(nilai >= 80)
    puts 'nilai A'
elsif(nilai >= 70)
    puts 'nilai B'
else 
    puts 'nilai Z'
end

# Logical Condition in if
password = 'karant'
username = 'unity'

if(username == 'unity' && password == 'karant')
    puts 'sukses'
else
    puts 'gagal'
end

# IF inside IF
if(username == 'unity')
    if(password == 'karant')
        puts 'sukses'
    else
        puts 'gagal'
    end
else
    puts 'username tidak ada'
end

# Case when Conditional
gender = gets.chomp
case gender
when 'P'
    puts 'Perempuan'
when 'L'
    puts 'Laki - laki'
else
    puts 'Silahkan melakukan tes lab'
end