require 'pry'

class OutOfRangeException < StandardError
  # Error that gets raised when a conversion of an integer is attempted for
  # which no Roman Number representation is defined.
end

class Integer
  def to_roman_s
    if between?(1, 3999)
      add_symbol('', self)
    else
      raise OutOfRangeException
    end
  end

  private

  def add_symbol(roman_string, remaining_value)
    # Once we reach 0, we return the completed string, otherwise: recursion.
    return roman_string if remaining_value.zero?

    value_symbols = [
      [1000, 'M'], [900, 'CM'], [500, 'D'], [400, 'CD'],
      [100, 'C'], [90, 'XC'], [50, 'L'], [40, 'XL'],
      [10, 'X'], [9, 'IX'], [5, 'V'], [4, 'IV'],
      [1, 'I']
    ]

    value_symbols.each do |vs|
      if remaining_value >= vs[0]
        remaining_value -= vs[0]
        roman_string += vs[1]
        break
      end
    end

    add_symbol(roman_string, remaining_value)
  end
end
