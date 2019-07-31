class Shift
attr_reader :key, :offset
  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def char_set
    ("a".."z").to_a << " "
  end

  def shift_a
    @key.key_a + @offset.offset_a
  end

  def shift_b
    @key.key_b + @offset.offset_b
  end

  def shift_c
    @key.key_c + @offset.offset_c
  end

  def shift_d
    @key.key_d + @offset.offset_d
  end

  def shift_store
    shift_store_hash = Hash.new
    shift_store_hash[:shift_a] = shift_a
    shift_store_hash[:shift_b] = shift_b
    shift_store_hash[:shift_c] = shift_c
    shift_store_hash[:shift_d] = shift_d
    return shift_store_hash
  end

  def encryption(message)
    message_chars_array = message.downcase.chars
    shifts_hash = shift_store
    post_encryption = []
    message_chars_array.each_with_index do |char,index|
    if char_set.include?(char)
      index_matcher = char_set.find_index(char)
      post_encryption <<
      char_set
      .rotate(shifts_hash
      .values[index % shifts_hash.values.count])[index_matcher]
      # binding.pry
      end
    end
    post_encryption.join
  end

  def decryption(message)
    message_chars_array = message.downcase.chars
    shifts_hash = shift_store
    post_decryption = []
    message_chars_array.each_with_index do |char,index|
    if char_set.include?(char)
      index_matcher = char_set.find_index(char)
      post_decryption <<
      char_set
      .rotate(-shifts_hash
      .values[index % shifts_hash.values.count])[index_matcher]
      # binding.pry
      end
    end 
    post_decryption.join
  end
end