require "pry"
require_relative "./modules/helpers.rb"

class User
    extend Helpers::ClassMethods
    include Helpers::InstanceMethods

    private

    def visible_from_child
        puts "I am visible in all the subclasses!"
    end
end

binding.pry