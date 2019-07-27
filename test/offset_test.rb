require './test/test_helper'

class OffsetTest < Minitest::Test
def setup
@offset = Offset.new("072719")
end

def test_it_exists
assert_instance_of Offset, @offset
end

def test_date #need to test for todays date
assert_equal "072719",@offset.date
end

def test_squaring_date
assert_equal "5288052961", @offset.square_numeric_date
end

end
