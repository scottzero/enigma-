class Enigma
  def initialize
    @date = Offset.new.current_date
    @key = Key.new.key_random
  end

  def encrypt(message, key = @key, date = @date) #default args to init vars
    shifts= Shift.new(Key.new(key), Offset.new(date))
    encryption = shifts.encryption(message)
    encryption
  end

  def decrypt(message, key = @key, date = @date) #default args to init vars
    shifts= Shift.new(Key.new(key), Offset.new(date))
    decryption = shifts.decryption(message)
    decryption
  end
end
