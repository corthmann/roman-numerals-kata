class RomanNumerals
  ROMAN = {:one => 'I',
           :five => 'V',
           :ten => 'X',
           :hundred =>'C'}

  def self.decimal_to_roman number
    result = ''
    if number <= 3
      number.times do |index|
        result += ROMAN[:one]
      end
    end
  end
end
