class Calculator
  
  @result

  def initialize
      @result = 0
  end

  def add(number)
    @result = number + @result
    return self
  end

  def subtract(number)
    @result = @result - number
    return self
  end

  def print
    puts "your result is #{@result}."
    return self
  end


end

solution = Calculator.new

solution.add(5)
        .add(7)
        .subtract(10)
        .print



