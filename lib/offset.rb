class Offset
  attr_reader :date
  def initialize(date)
    @date = date
  end

  def current_date
    Date.now.strftime('%d%m%y')#this will format the date via the notations in the string
                        #string format method
  end

  #need a method to square the numeric form of our Date
  def square_numeric_date
    (@date.to_i ** 2).to_s # ** exponent^...it WORKS! Big NUMBER, reminder ask meg or ian about doubles or longs  :)
  end
end
