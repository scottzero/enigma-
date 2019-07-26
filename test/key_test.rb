require './test/test_helper'

class KeyTest < Minitest::Test
def setup
  @key = Key.new("75634")
end

def test_it_exitsts
  assert_instance_of Key, @key
end

end
