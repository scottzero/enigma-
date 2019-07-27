class Offset
  attr_reader :date
  def initialize(date)
    @date = date
  end

  def current_date
    Date.now.strftime('%d%m%y')#this will format the date via the notations in the string
                        #string format method
  end
end
