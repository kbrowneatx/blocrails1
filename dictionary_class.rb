class Dictionary
  attr_accessor :rubydict, :entries
  
  def initialize
    @rubydict = Hash.new
  end
  
  def entries
    @rubydict
  end
  
  def add( addword = {} )
    addword.each { |k,v| @rubydict[k] = v }
  end
  
  def keywords( keyonly = {} )
    keyonly.each_key { |key| @rubydict.store( key ) }
  end
  
  def include?(keystr)
    @rubydict.include?(keystr)
  end
  
  def listwords
    @rubydict.each_pair do |k,v| 
      puts "#{ k }: #{ v }"
    end
  end
  
  def searchdict(str1)
  
  end
    
end

my_dict = Dictionary.new
my_dict.add( {:class => "blueprint for individual objects"} )
my_dict.add( {:object => "an instance of class, containing data and methods"} )
my_dict.add( {:variable => "memory locations to hold data"} )
my_dict.add( {:method => "a set of instructions to perform a command or manipulate data"} )

my_dict.listwords
