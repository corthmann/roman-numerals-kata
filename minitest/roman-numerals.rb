class RomanNumerals
  ROMAN = {:one => 'I',
           :five => 'V',
           :ten => 'X',
           :hundred =>'C'}

  def self.decimal_to_roman number
    result = ''
    number.times {|index| result += ROMAN[:one] } if number <= 3
    result
  end
end
