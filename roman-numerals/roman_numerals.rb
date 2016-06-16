class BookKeeping
  VERSION = 2
end

class Fixnum
  def to_roman
    num = self
    roman_numeral = ''
    roman_numeral = calculate_digit(roman_numeral, num, -4) if num >= 1000
    roman_numeral = calculate_digit(roman_numeral, num, -3) if num >= 100
    roman_numeral = calculate_digit(roman_numeral, num, -2) if num >= 10
    roman_numeral = calculate_digit(roman_numeral, num, -1)
  end

  def calculate_digit (roman_numeral, num, my_index)
    roman_numeral_conversion_hash = {
      -1 => {0 => '', 1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII', 9 => 'IX'},
      -2 => {1 => 'X', 2 => 'XX', 3 => 'XXX', 4 => 'XL', 5 => 'L', 6 => 'LX', 7 => 'LXX', 8 => 'LXXX', 9 => 'XC'},
      -3 => {1 => 'C', 2 => 'CC', 3 => 'CCC', 4 => 'CD', 5 => 'D', 6 => 'DC', 7 => 'DCC', 8 => 'DCCC', 9 => 'CM'},
      -4 => {1 => 'M', 2 => 'MM', 3 => 'MMM', 4 => '', 5 => '', 6 => '', 7 => '', 8 => '', 9 => ''}
    }

    digit = num.to_s.split('')[my_index].to_i
    roman_numeral = "#{roman_numeral}#{roman_numeral_conversion_hash[my_index][digit]}"
  end
end
