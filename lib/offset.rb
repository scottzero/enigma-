class Offset
  attr_reader :date
  def initialize(date = nil)
    @date = date
  end

  def current_date
    Date.today.strftime('%d%m%y')
  end

  def square_numeric_date
    (@date.to_i ** 2).to_s # ** exponent^...it WORKS! Big NUMBER, reminder ask meg or ian about doubles or longs  :)
  end

  def offset_a
    square_numeric_date[-4].to_i
  end

  def offset_b
    square_numeric_date[-3].to_i
  end

  def offset_c
    square_numeric_date[-2].to_i
  end

  def offset_d
    square_numeric_date[-1].to_i
  end

end
