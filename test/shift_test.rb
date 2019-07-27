require './test/test_helper'
class ShiftTest < Minitest::Test
def setup
#need a key, need an offset and new shift object
@key = Key.new("75634")
@offset = Offset.new("072719")
@shift = Shift.new(@key, @offset)
end

def test_it_exists
assert_instance_of Shift, @shift
end

def test_attributes
assert_equal @key, @shift.key
assert_equal @offset, @shift.offset
end

end
