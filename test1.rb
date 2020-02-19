puts 'Ruby Test 1'
puts '==========='
puts 'Test 1 array'

# buat array dari a sampai z menggunakan split
puts "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z".split(',')

arr = []
3.times do
    print "Masukkan nama:"
    nama = gets.chomp #to_s
    arr.push(nama)
end

puts arr

puts '--------'

