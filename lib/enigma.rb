class Enigma
  def initialize
    @date = Offset.new.current_date
    @key = Key.new.key_random
  end
end 
