# Pembagian error
def bagi(a,b)
    begin
        hasil = a/b
    rescue
        error = true
    end
    if error
        'Terjadi ERroR'
    else
        hasil
    end
end
puts bagi(8,50)
puts bagi(4,0)