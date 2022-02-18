require_relative "./modules/helpers.rb"

class Book
    # instance methods
    include Helpers::InstanceMethods
    
    # class methods
    extend Helpers::ClassMethods

    def self.create_by_title(title)
        self.new(title).tap{|book| book.save}
    end

    def self.new_by_title(title)
        self.new(title)
    end

    def self.find_by(title)
        self.all.find {|book| book.title == title}
    end
    
    def self.find_or_create_by_title(title)
        self.find_by_title(title) || self.create_by_title(title)
    end

end