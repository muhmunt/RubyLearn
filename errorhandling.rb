def bagi(a,b)
    hasil = a/b
end
puts bagi(8, 2)
# puts bagi(8, 0)

# rescue => param / penanganan error berdasarkan parameter
def bagi(a,b)
    
   begin
       hasil = a/b 
   rescue
       error = true
   end

   if error 
        puts "terjadi error"
   else
        hasil
   end

end

puts bagi(8,2)
puts bagi(8,0)

tes = []
1.upto(100) do |i|
    a = 0
    1.upto(i) do |x|
        mod = i % x
        if mod == 0
            a += 1
        end
    end
    
   if a == 2
        tes.push(i)
   end
end
puts "#{tes}"

100.times do |angka|
    a = 1
    b = 0
    while a <= angka do
        if angka % a == 0
            b += 1
        end
        a+=1
    end
    if b == 2
        puts angka 
    end
end