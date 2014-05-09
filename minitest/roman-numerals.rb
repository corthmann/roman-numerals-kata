require 'minitest/number'

class RomanNumerals

  ROMAN_NUMBERS = [
      Number.new(1, 'I', true),
      Number.new(5, 'V', false),
      Number.new(10, 'X', true),
      Number.new(50, 'L', false),
      Number.new(100, 'C', true),
      Number.new(500, 'L', false),
      Number.new(1000, 'M', true)
  ]

  def self.decimal_to_roman number
    result = ''
    
    # Tens and up...
    while number >= 10
      symbol = find_highest_symbol(number)
      result = ROMAN[:thousand]+result
      number -=
      if number >= 1000
        result = ROMAN[:thousand]+result 
        number -= 1000
      elsif number >= 500
        result = ROMAN[:fivehundred]+result 
        number -= 500
      elsif number >= 400
        result = ROMAN[:hundred]+ROMAN[:fivehundred]+result 
        number -= 400
      end
    end
    
    # Ones
    number.times {|index| result += ROMAN[:one] } if number.between? 0,3
    result = ROMAN[:one] + ROMAN[:five] if number == 4
    result = ROMAN[:five] + ROMAN[:one] if number == 6
    result = ROMAN[:one] + ROMAN[:ten] if number == 9
    result
  end

  def repeat_self(number)
    if number / 10 <= 4
    number
    end
  end

  #### Helpers ###
  def find_highest_number number

    # if number >= 1000
    #   DECIMAL[1000]
    # elsif number >= 500
    #   DECIMAL[500]
    # elsif number >= 100
    #   DECIMAL[100]
    # elsif number >= 50
    #   DECIMAL[50]
    # elsif number >= 10
    #   DECIMAL[10]
    # elsif number >= 5
    #   DECIMAL[5]
    # else
    #   DECIMAL[1]
    # end
  end

end
