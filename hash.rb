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