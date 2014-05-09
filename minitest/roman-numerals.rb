class RomanNumerals

  def self.decimal_to_roman number
    result = ''
    
    ones = ['I','II','III','IV','V','VI','VII','VIII','IX']
    
    tens      = ones.map { |str| str.gsub('V','L').gsub('I','X') }
    hundreds  = ones.map { |str| str.gsub('V','D').gsub('I','C') }
    thousands = ones.map { |str| str.gsub('V',' ').gsub('I','M') }
    
    if (1000..4000) === number
      result = result + thousands[number/1000 - 1]
      number = number % 1000
    end
    if (100..999) === number
      result = result + hundreds[number/100 - 1]
      number = number % 100
    end
    if (10..99) === number
      result = result + tens[number/10 - 1]
      number = number % 10
    end
    if (1..9) === number
      result = result + ones[number-1]
    end
    
    result
  end
end
