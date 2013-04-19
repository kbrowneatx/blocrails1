class RPNCalculator
  attr_accessor :value, :num_ary, :counter
  
  def initialize
    @value = 0
    @num_ary = []
    @counter = 0
  end
  
  def push(num)
    @num_ary.push(num)
  end

  def update_ary
    @num_ary.pop(2)
    @num_ary.push(@value)
  end
  
  def plus
    @value = @num_ary[-2] + @num_ary.last
    update_ary
  end

  def minus
    @value = @num_ary[-2] - @num_ary.last
  	update_ary
  end

  def times
    @value = @num_ary[-2] * @num_ary.last
  	update_ary
  end
  
  def divide
    @value = @num_ary[-2] / @num_ary.last
  	update_ary
  end
  
end
