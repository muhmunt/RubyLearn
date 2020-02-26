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

# metthod setter yaitu method yang berfungsi untuk mengeset atau mengubah nilai dari parameter sebuah object

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

# PRIVATE METHOD

class  MesinPencetak
    attr_accessor :text
    # attr_accessor -> untuk pengganti attr_writer & attr_reader
    
    def initialize(text)
        @text = text
    end

    def cetak(format)
        cekformat(@text, format)
    end

    private
    def cekformat(text, format)
        if format == :plain
            text 
        elsif format == :blink  
        "*** #{text} ***"
        end
    end
    
end

mesinku = MesinPencetak.new("Belajar Ruby dan Ruby on Rails")
puts mesinku.cetak(:blink)
puts mesinku.cetak(:plain)

# Inheritanceq

class Siswa
    attr_accessor :nama, :materi, :nilai
    def initialize(nama, materi, nilai)
        @nama = nama
        @materi = materi
        @nilai = nilai
    end

    def belajar
        puts "Siswa #{@nama} sedang belajar #{@materi}"
    end

    def ulangan
        puts "Siswa #{@nama} mendapatkan nilai #{@nilai} untuk materi #{@materi}."
    end

end

class Kelas12 < Siswa 

    attr_accessor :mapel, :nilai_un
    
    def initialize(mapel, nilai_un)
        @mapel = mapel
        @nilai_un = nilai_un
    end
    
    def unbk
        puts "Siswa #{@nama} mengerjakan UN mapel #{@mapel} dengan nilai #{@nilai}."
    end

    def belajar
        puts "Siswa #{@nama} belajar materi #{@materi} dengan serius"
    end
end
sutera = Siswa.new('Sutera','Ruby',10)
sutera.belajar
sutera.ulangan

mutia = Kelas12.new('Matematika', 10)
mutia.nama = "Mutia"
mutia.materi = "Ruby on Rails"
mutia.nilai = 9
mutia.belajar
mutia.ulangan
mutia.unbk


class Siswa
    attr_accessor :nama, :materi, :nilai
    def initialize(nama, materi, nilai)
        @nama = nama
        @materi = materi
        @nilai = nilai
    end

    def belajar
        puts "Siswa #{@nama} sedang belajar #{@materi}"
    end

    def ulangan
        puts "Siswa #{@nama} mendapatkan nilai #{@nilai} untuk materi #{@materi}."
    end

end
class Kelas12 < Siswa 

    attr_accessor :mapel, :nilai_un
    
    def initialize(mapel, nilai_un)
        @mapel = mapel
        @nilai_un = nilai_un
    end
    
    def belajar 
        puts "Siswa #{@nama} belajar #{@materi} dengan serius"
    end

    def unbk
        puts "Siswa #{@nama} mengerjakan UN mapel #{@mapel} dengan nilai #{@nilai}."
    end
end

puts '-----'

class ApiConnection
    attr_accessor :url, :name 
    def initialize(url, name)
        @url = url
        @name = name
    end

    def connect 
        @connect = true #logika program disini
    end
    
    def status
        if @connect 
            :connected
        else
            :unconnected
        end
    end
end

class FacebookConnection < ApiConnection
    def version 
        1
    end

    def status
        :connected
    end
end

facebook_connection = FacebookConnection.new('https://instagram.com','instagram')
status = facebook_connection.status
version = facebook_connection.version 
puts status
puts version

class ApiConnection
    attr_accessor :url, :name 
    def initialize(url, name)
        @url = url
        @name = name
    end

    def connect 
        @connect = true #logika program disini
    end
    
    def status
        if @connect 
            :connected
        else
            :unconnected
        end
    end
end

class FacebookConnection < ApiConnection
    def version 
        1
    end

    def connect 
        super
        puts 'connection established'
    end

    def status
        super
        :connected
    end
end

class FacebookConnection < ApiConnection
    class << self 
        def version 
            2
        end
        def status
            :connected
        end
    end
end
puts facebook_connection.status
puts facebook_connection.version 
facebook_connection = FacebookConnection.new('https://instagram.com','instagram')
status = facebook_connection.status
version = facebook_connection.version 
puts status
puts version


# THrowBack GETTER SETTER
class MesinPencetak
    # attr_reader :text
    attr_writer :text 
    
    def initialize(text)
        @text = text 
    end             

    def cetak
        puts "Hari ini saya belajar method #{@text}"
    end
end

mesinku = MesinPencetak.new("getter");
puts mesinku.cetak
mesinku.text = "Setter"
puts mesinku.cetak

puts '---------'
# Module merupakan kumpulan dari class, method, dan constants
module NamaModule
    XXX = 100

    LOKAL = "Lokal variable"
    def method 
        puts "dari dalam konstan"        
    end

    module A
        XXX = 200
    end
end

puts NamaModule::XXX 
puts NamaModule:: LOKAL
puts NamaModule::A::XXX

module Kerenz
    class  ApiConnection
        def connect 
            puts 'konek dari Kerenz::ApiConnection'
        end
    end
end

module Kool 
    class ApiConnection
        def connect
            puts 'konek dari Kool:ApiConnection'
        end
    end
end

con = Kerenz::ApiConnection.new 
con.connect 

con = Kool::ApiConnection.new 
con.connect