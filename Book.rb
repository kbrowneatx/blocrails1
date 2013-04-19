class Book
  attr_accessor :title
  
  def initialize
    @title = "placeholder"
  end
  
  def title=( newtitle )
    array1 = newtitle.split(" ")

    array1.each do |wd|
      if !["the", "a", "an", "and", "in"].include?(wd)
        wd.capitalize!
      end
    end
    if array1[0].class == String
      array1[0].capitalize!
    end
    @title = array1.join(" ")       # put string back together
  end

end


my_book = Book.new
#my_book.title = "tale of two cities"


