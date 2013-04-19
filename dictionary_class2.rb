class Dictionary
  attr_accessor :english
  
  def initialize
    @english = Hash.new
  end
  
  def entries
    @english
  end
  
  def add( addword )
    if addword.class == Hash
      @english.merge!(addword)
    else  
      @english.store(addword, nil)
    end    
  end
  
  def include?(keystr)
    @english.include?(keystr)
  end
  
  def keywords
    @english.keys.sort
  end
  
  def listwords
    @english.each_pair do |k,v| 
      puts "#{ k }: #{ v }"
    end
  end
  
  def find(str1)
    rtnhash = {}
    @english.each do |k,v|
      if k.start_with? (str1)
        rtnhash.store(k,v)
      end
    end
    rtnhash
  end
    
end

my_dict = Dictionary.new
my_dict.add( 'fish' => 'aquatic animal' )
my_dict.add( 'bird' => 'flying animal' )
my_dict.add( 'snake' => 'slithering animal' )
my_dict.add( 'lion' => 'king of the animals' )

my_dict.listwords
my_dict.find("fish")