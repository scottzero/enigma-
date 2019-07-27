require './test/test_helper'

class ShiftTest < Minitest::Test
def setup
#need a key, need an offset and new shift object
@key = Key.new("75634")
@offset = Offset.new("072719")
@shift - Shift.new(@key, @offset)
end

def test_it_exists

end 
