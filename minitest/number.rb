class Number
  attr_accessor :decimal, :roman
  def initialize decimal, roman, repeatable
    @decimal = decimal
    @roman = roman
    @repeatable = repeatable
  end

  def self.is_higher_than number
    @decimal > number
  end

  def self.is_lower_than number
    @decimal < number
  end

  def self.is_repeatable
    @repeatable
  end

end