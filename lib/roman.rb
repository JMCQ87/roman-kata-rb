require 'pry'

class OutOfRangeException < StandardError
  # Error that gets raised when a conversion of an integer is attempted for
  # which no Roman Number representation is defined.
end

class Integer
  def to_roman_s
    value_symbols = [[1000, "M"], [500, "D"], [100, "C"], [50, "L"], [10, "X"], [5, "V"], [1, "I"]]

    if self.between?(1, 3999)
      roman_string = ""

      int_value = self

      value_symbols.each do |vs|
        if int_value >= vs[0]
          int_value -= vs[0]
          roman_string += vs[1]
        else
          next
        end
      end

      return roman_string
    else
      raise OutOfRangeException
    end
  end
end
