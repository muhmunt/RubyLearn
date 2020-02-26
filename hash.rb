# Array of object variable with hash

# hash pertama -> String Element
hash = {'satu'=>1,'dua'=>2,'tiga'=>'slamet'}
puts hash['tiga']
# hash kedua -> Symbol Element
hash = {:satu => 'Katakan', :dua => 'Salah',:tiga => 'Benar'}
puts hash[:satu]
# hash ketiga -> Default Element
hash = {satu: 'Hello', dua: 'World', tiga: 'Home'}
puts hash[:satu] # Harus symbol :satu

# Empty Hash 
hash = {nama: 'Agam', job: 'Programmer',company: 'Fandom'}
puts hash[:salary]
puts hash.fetch(:nama)
puts hash.fetch(:salary, 30000)
puts hash = Hash.new("belum ada nilai") #default answer set as empty
puts hash[:nilai]
puts hash.fetch(:nilai, 100)

# Saat kita menjalankan hash[:nilai] ,maka outputnya => 'belum ada nilai'

puts hash[:nilai]
hash[:nilai] = 100
hash[:salary] = 120
puts hash
puts '====================='

# Menambah dan menghapus element dalam hash
new_hash = Hash.new
new_hash [:nama] = 'Yusril'
puts (new_hash)
new_hash['kelas'] = 'A-1'
puts new_hash
# news_hash[id:] 123 #error, harus symbol atau string

# Delete()
new_hash.delete(:nama)
puts new_hash 
new_hash[:nama] = 'Saputra'
# new_hash.delete(:nama, 'kelas') error, hanya bisa satu element

# Looping dalam hash
hash = {nama: 'Uni', kelas: 'A!', tipe: 'Normal'}
hash.each do |element, value|
    puts "#{element} ==> #{value}"
end

hash.each do |element|
    puts "#{element} item"
end

hash.each_key do |key| #looping untuk key/element
    puts "ambil #{key}"
end

puts "ambil #{hash.keys}"
puts "#{hash.values}"