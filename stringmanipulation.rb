# Semua huruf kapital
puts 'Ini adalah huruf kapital'.upcase
# Semua huruf kecil
puts 'INI ADALAH HURUF KECIL'.downcase
# Kapital di awal kalimat
puts 'ini adalah judul'.capitalize
# putar kata
puts 'wikrama'.reverse
# Multiple manipulation
puts 'Minuman'.reverse.capitalize

# Permanent Manipulation
kata = 'Kata'
puts kata.reverse
puts kata.upcase
puts kata
puts kata.upcase! #Permanent Upcase
puts kata
puts kata.downcase
puts kata

# One Replace dan Global Replace

# One Replace => yang diawal saja
puts 'kata kata mutiara dari katana'.sub('kata','pisau')

# Global replace => semua kata
puts 'kata kata mutiara dari katana'.gsub('kata','pisau')

# Multiple replace
puts 'kata kata mutiara dari katana'.gsub('kata','pisau').sub('dari','dan').gsub('pisau','aku')

# Strip
# Fungsi = menghilangkan spasi di samping kata
pass = "       password      ".strip
puts pass
puts pass if pass == 'password'
puts '      kata     a'
puts '      kata     a'.strip
puts '      kata     '.strip

# Buat array dari string
puts 'ini,adalah,kelas,ruby,program'.split(',')
puts 'ini adalah kelas ruby program'.split('a')