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

  it 'A letter repeats its value that many times (XXX = 30, CC = 200, etc.). A letter can only be repeated three times.' do
    # Test first part of spec:
    assert_equal('XXX', RomanNumerals.decimal_to_roman(30))
    assert_equal('CC', RomanNumerals.decimal_to_roman(200))
    assert_equal('MMMCCCXXXIII', RomanNumerals.decimal_to_roman(3333))
    assert_equal('MMCCXXII', RomanNumerals.decimal_to_roman(2222))
    assert_equal('MCXI', RomanNumerals.decimal_to_roman(1111))
    # Test last part of spec:
    assert_equal('IV', RomanNumerals.decimal_to_roman(4))
    # TODO (currently non-terminating)
    #assert_equal('XL', RomanNumerals.decimal_to_roman(40))
    #assert_equal('CM', RomanNumerals.decimal_to_roman(400))
  end
end
