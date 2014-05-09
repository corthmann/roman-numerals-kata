class RomanNumerals
  ROMAN = {:one => 'I',
           :five => 'V',
           :ten => 'X',
           :hundred =>'C'}

  def self.decimal_to_roman number
    result = ''
    number.times {|index| result += ROMAN[:one] } if number <= 3
    number.times {|index| result = ROMAN[:one] + ROMAN[:five] } if number == 4
    result
  end
end
