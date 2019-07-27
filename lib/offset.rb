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

  #need method to take the last 4 digits of big number date per letter
  def offset_a
    #take our square_numeric_date_method and parse index
    #is a string so need to convert back to i
    square_numeric_date[-4].to_i
  end

  def offset_b
    #get value from nbig num for b
    square_numeric_date[-3].to_i
  end

  def offset_c
    #get value from big num for c
    square_numeric_date[-2].to_i
  end


end
