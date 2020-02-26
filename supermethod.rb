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
# class seft
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


puts FacebookConnection.status
puts FacebookConnection.version 
facebook_connection = FacebookConnection.new('https://instagram.com','instagram')
puts FacebookConnection.status
puts FacebookConnection.version
