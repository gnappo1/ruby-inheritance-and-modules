class Guest < User

    # def login
    #     super
    #     puts "Now I am inside the Guest login method"
    # end

    def test
        visible_from_child
    end

end