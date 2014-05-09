require 'minitest/autorun'
require_relative 'roman-numerals'

# Rules: http://www.factmonster.com/ipka/A0769547.html

describe 'RomanNumerals' do
  it 'returns I for 1' do
    roman = RomanNumerals.decimal_to_roman(1)
    assert_equal('I', roman)
  end

  it 'returns IV for 4' do
    roman = RomanNumerals.decimal_to_roman(4)
    assert_equal('IV', roman)
  end

  it 'returns VI for 6' do
    roman = RomanNumerals.decimal_to_roman(6)
    assert_equal('VI', roman)
  end

  it 'returns IX for 9' do
    roman = RomanNumerals.decimal_to_roman(9)
    assert_equal('IX', roman)
  end
end
