class RomanNumerals
  ROMAN = {:one => 'I',
           :five => 'V',
           :ten => 'X',
           :fifty => 'L',
           :hundred =>'C',
           :fivehundred =>'D',
           :thousand =>'M',
           }

  tens = {1000 => :thousand,
          500 => :fivehundred,
          400 => [:fivehundred],
          }

  def self.decimal_to_roman number
    result = ''
    
    # Tens and up...
    while number >= 10
      if number >= 1000
        result = ROMAN[:thousand]+result 
        number -= 1000
      end
      if number >= 500
        result = ROMAN[:fivehundred]+result 
        number -= 500
      end
      if number >= 400
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
end
