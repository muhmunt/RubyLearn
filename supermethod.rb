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


puts FacebookConnection.status
puts FacebookConnection.version 
facebook_connection = FacebookConnection.new('https://instagram.com','instagram')
puts FacebookConnection.status
puts FacebookConnection.version
