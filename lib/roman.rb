require 'pry'

class OutOfRangeException < StandardError
  # Error that gets raised when a conversion of an integer is attempted for
  # which no Roman Number representation is defined.
end


class Integer
  # Symbol	I	V	X	L	C	D	M
  # Value	1	5	10	50	100	500	1,000

  def to_roman_s
    if self.between?(1, 3999)
      self.to_s
    else
      raise OutOfRangeException
    end
  end
end
