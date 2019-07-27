#class should use the key and the offset to make a shift
#presentation with each other, and store those combination
class Shift
attr_reader :key, :offset
def initialize(key, offset)
  @key = key
  @offset = offset
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





end