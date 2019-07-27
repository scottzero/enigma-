#class should use the key and the offset to make a shift
#presentation with each other, and store those combination
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

end
