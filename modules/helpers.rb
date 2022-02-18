module Helpers

    module ClassMethods
        @@all = []
        def all
            @@all
        end
    
        def create
            self.new.tap{|user| user.save}
        end
    
        def find_by_name(name)
            self.all.find {|user| user.name == name}
        end
    
        def create_by_name(name)
            self.new(name).tap{|user| user.save}
        end
    
        def find_or_create_by_name(name)
            self.find_by_name(name) || self.create_by_name(name)
        end
    
        def new_by_name(name)
            self.new(name)
        end
    end

    module InstanceMethods
        def initialize(name)
        #     attributes.each do |key, value|
              self.class.attr_accessor(:name)
              self.send("name=", name)
        #     end
        end

        def save
            self.class.all << self
        end
    end

end