#class should use the key and the offset to make a shift
#presentation with each other, and store those combination
class Shift
attr_reader :key, :offset
def initialize(key, offset)
  @key = key
  @offset = offset
end

end
