class Enigma
  def initialize
    @date = Offset.new.current_date
    @key = Key.new.key_random
  end

  def encrypt(message, key = @key, date = @date)
    shift_1= Shift.new(Key.new(key), Offset.new(date))
    #adjusted to fit project requirenments
    {
      :encryption => shift_1.encryption(message),
      :key => shift_1.key.key,
      :date => shift_1.offset.date
    }
  end

  def decrypt(message, key = @key, date = @date)
    shift_1= Shift.new(Key.new(key), Offset.new(date))
    {
      :decryption => shift_1.decryption(message),
      :key => shift_1.key.key,
      :date => shift_1.offset.date
    }
  end
end
