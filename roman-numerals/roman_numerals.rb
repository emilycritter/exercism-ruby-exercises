class BookKeeping
  VERSION = 2
end

class Fixnum
  def to_roman
    num = self
    roman_numeral = ''
    if num == 3000
      roman_numeral += 'MMM'
      num = num - 3000
    elsif num >= 2000
      roman_numeral += 'MM'
      num = num - 2000
    elsif num >=1000
      roman_numeral += 'M'
      num = num - 1000
    end
    hundreds_digit(roman_numeral, num)
  end

  def hundreds_digit (roman_numeral, num)
    if num >= 900
      roman_numeral += 'CM'
      num = num - 900
    elsif num >= 800
      roman_numeral += 'DCCC'
      num = num - 800
    elsif num >= 700
      roman_numeral += 'DCC'
      num = num - 700
    elsif num >= 600
      roman_numeral += 'DC'
      num = num - 600
    elsif num >= 500
      roman_numeral += 'D'
      num = num - 500
    elsif num >= 400
      roman_numeral += 'CD'
      num = num - 400
    elsif num >= 300
      roman_numeral += 'CCC'
      num = num - 300
    elsif num >= 200
      roman_numeral += 'CC'
      num = num - 200
    elsif num >= 100
      roman_numeral += 'C'
      num = num - 100
    end
    tens_digit(roman_numeral, num)
  end

  def tens_digit (roman_numeral, num)
    if num >= 90
      roman_numeral += 'XC'
      num = num - 90
    elsif num >= 80
      roman_numeral += 'LXXX'
      num = num - 80
    elsif num >= 70
      roman_numeral += 'LXX'
      num = num - 70
    elsif num >= 60
      roman_numeral += 'LX'
      num = num - 60
    elsif num >= 50
      roman_numeral += 'L'
      num = num - 50
    elsif num >= 40
      roman_numeral += 'XL'
      num = num - 40
    elsif num >= 30
      roman_numeral += 'XXX'
      num = num - 30
    elsif num >= 20
      roman_numeral += 'XX'
      num = num - 20
    elsif num >= 10
      roman_numeral += 'X'
      num = num - 10
    end
    ones_digit(roman_numeral, num)
  end

  def ones_digit (roman_numeral, num)
    if num >= 9
      roman_numeral += 'IX'
    elsif num >= 8
      roman_numeral += 'VIII'
    elsif num >= 7
      roman_numeral += 'VII'
    elsif num >= 6
      roman_numeral += 'VI'
    elsif num >= 5
      roman_numeral += 'V'
    elsif num >= 4
      roman_numeral += 'IV'
    elsif num >= 3
      roman_numeral += 'III'
    elsif num >= 2
      roman_numeral += 'II'
    elsif num >= 1
      roman_numeral += 'I'
    end
    roman_numeral
  end
end
