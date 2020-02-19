# Object orienter Programming Class - Class normal function
class Calculator
    def
        penjumlahan(a,b)
        a + b
    end

    def
        pengurangan(a,b)
        a - b
    end
end

calc = Calculator.new #object insert class to variable
hasil_penjumlahan = calc.penjumlahan(18,5)
puts "Hasil = #{hasil_penjumlahan}"

hasil_pengurangan = calc.pengurangan(18,5)
puts "Hasil = #{hasil_pengurangan}"

# OOP - Constructor
class CalculatorKool
    def initialize(a,b)
        @parameter_a = a #variable umum pada class
        @parameter_b = b
        @lokal = a + b
    end

    def penjumlahan
        @parameter_a + @parameter_b
    end

    def pengurangan
        @parameter_a - @parameter_b
    end

    def pembagian
        @parameter_a / @parameter_b
    end

end

calc = CalculatorKool.new(10, 5) #Giving parameter as default variable
hasil_penjumlahan = calc.penjumlahan
puts "Hasil = #{hasil_penjumlahan}"
hasil_pengurangan = calc.pengurangan
puts "Hasil = #{hasil_pengurangan}"

# OOP GETTER-SETTER
class Print
    def initialize(text)
        @text = text
    end
    
    def print
        puts @text
    end
end

printer = Print.new('Saya sedang belajar getter-setter')
printer.print

printer = Print.new('Saya sedang mendalami getter-setter')
printer.print
puts '===================='

# Getter-Setter
class Print
    attr_accessor :text
    attr_writer :text #setter
    attr_reader :text #getter

    def initialize(text)
        @teks = text  
    end

    #setter
    def text=(text)
        @text = text  
    end  

    #getter
    def text
        @text 
    end

    def print 
        puts "mencetak : #{@teks}"
    end 

end

printer = Print.new('Saya sedang belajar getter dan setter di Ruby')
printer.print
printer.text = "aku sayang ibu"
puts printer.text
printer.text = "setter dan getter"
puts printer.text
puts '======================================='

class Print
    # attr_accessor :text
    # attr_writer :text #setter
    attr_reader :text #getter

    def initialize(text)
        @teks = text  
    end

    #setter
    def text=(text)
        @text = text  
    end  

    #getter
    # def text
    #     @text 
    # end

    def print 
        puts "mencetak : #{@teks}"
    end 

end

printer = Print.new('Saya sedang belajar getter dan setter di Ruby')
printer.print
printer.text = "aku sayang ayah"
puts printer.text
printer.text = "setter dan getter"
puts printer.text
puts '======================================='

class Print
    # attr_accessor :text
    # attr_writer :text #setter
    attr_reader :text #getter

    def initialize(text)
        @teks = text  
    end

    #setter
    def text=(text)
        @text = text  
    end  

    #getter
    # def text
    #     @text 
    # end

    def print 
        puts "mencetak : #{@text}"
    end 

end

printer = Print.new('Saya sedang belajar getter dan setter di OOP Ruby')
printer.print
printer.text = "aku sayang ayah"
printer.print
printer.text = "setter dan getter"
puts printer.text
puts '======================================='

class MesinPencetak
    attr_reader :text, :duration

    def initialize(text, duration)
        @text = text
        @duration = duration
    end

    def cetak 
        puts "Hari ini saya belajar method #{@text}"
        puts "Waktu yang diperlukan untuk belajarnya adalah #{@duration}."
    end
end

mesinku = MesinPencetak.new("getter","sebentar")
mesinku.cetak
puts mesinku.text
puts mesinku.duration

class  MesinPencetak

    attr_writer :text
    
    def initialize(text)
        @text = text
    end

    def cetak
        "Hari ini saya belajar method #{@text}"
    end
    
end

mesinku = MesinPencetak.new("getter")
puts mesinku.cetak
mesinku.text = "setter"
puts mesinku.cetak
puts mesinku.text

puts '--------------'
class  MesinPencetak
    attr_reader :text, :duration
    # fungsinya untuk mengambil atribute/instant
    attr_writer :text, :duration
    # fungsinya untuk mengubah attribute/instant variable yang diinginkan
    
    def initialize(text, duration)
        @text = text
        @duration = duration
    end

    def cetak
        puts "Hari ini saya belajar method #{@text}"
        puts "Waktu yang diperlukan untuk belajarnya adalah #{duration}"
    end
    
end

mesinku = MesinPencetak.new("getter","sebentar")
mesinku.cetak
mesinku.text = "setter"
mesinku.duration = "semenit"
mesinku.cetak
puts '--------------'
class  MesinPencetak
    attr_accessor :text, :duration
    # attr_accessor -> untuk pengganti attr_writer & attr_reader
    
    def initialize(text, duration)
        @text = text
        @duration = duration
    end

    def cetak
        puts "Hari ini saya belajar method #{@text}"
        puts "Waktu yang diperlukan untuk belajarnya adalah #{duration}"
    end
    
end

mesinku = MesinPencetak.new("getter","sebentar")
mesinku.cetak
mesinku.text = "setter"
mesinku.duration = "semenit"
mesinku.cetak