require './test/test_helper'

class OffsetTest < Minitest::Test
def setup
@offset = Offset.new("072719")
end

def test_it_exists
assert_instance_of Offset, @offset
end
end
