class BookKeeping
  VERSION = 2
end

class Fixnum
  def to_roman
    num = self
    roman_numeral = ''
    roman_numeral = thousands_digit(roman_numeral, num) if num >= 1000
    roman_numeral = hundreds_digit(roman_numeral, num) if num >= 100
    roman_numeral = tens_digit(roman_numeral, num) if num >= 10
    roman_numeral = ones_digit(roman_numeral, num)
    roman_numeral
  end

  def ones_digit (roman_numeral, num)
    my_digit_hash = {0 => '', 1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII', 9 => 'IX'}
    calculate_digit(roman_numeral, num, my_digit_hash, -1)
  end

  def tens_digit (roman_numeral, num)
    my_digit_hash = {1 => 'X', 2 => 'XX', 3 => 'XXX', 4 => 'XL', 5 => 'L', 6 => 'LX', 7 => 'LXX', 8 => 'LXXX', 9 => 'XC'}
    calculate_digit(roman_numeral, num, my_digit_hash, -2)
  end

  def hundreds_digit (roman_numeral, num)
    my_digit_hash = {1 => 'C', 2 => 'CC', 3 => 'CCC', 4 => 'CD', 5 => 'D', 6 => 'DC', 7 => 'DCC', 8 => 'DCCC', 9 => 'CM'}
    calculate_digit(roman_numeral, num, my_digit_hash, -3)
  end

  def thousands_digit (roman_numeral, num)
    my_digit_hash = {1 => 'M', 2 => 'MM', 3 => 'MMM', 4 => '', 5 => '', 6 => '', 7 => '', 8 => '', 9 => ''}
    calculate_digit(roman_numeral, num, my_digit_hash, -4)
  end

  def calculate_digit (roman_numeral, num, my_digit_hash, my_index)
    digit = num.to_s.split('')[my_index].to_i
    roman_numeral = "#{roman_numeral}#{my_digit_hash[digit]}"
  end
end
