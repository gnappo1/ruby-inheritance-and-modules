
class Admin < User

    def login
        super
        puts "Now I am inside the Admin login method"
    end

end