module Luhn
  
    def self.is_valid?(number)
      digit = number.to_s.reverse  #read from right to left

      digit2 =digit.split("").map { |d| d.to_i }
      
      sum = 0

      digit2.length.times do |num|
        digit2[num] *= 2 if num.odd?
        digit2[num] -= 9 if digit2[num] >= 10
      end

      if digit2.reduce(:+) % 10 === 0
        return true
      else 
        return false
      end

    
    end
    
end

