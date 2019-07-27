require './test/test_helper'

class KeyTest < Minitest::Test
def setup
  @key = Key.new("75634")
end

def test_it_exitsts
  assert_instance_of Key, @key
end

def test_attributes
  assert_equal "75634", @key.key
end

def test_key_string_parse
  assert_equal 75, @key.key_a
  assert_equal 56, @key.key_b
  assert_equal 63, @key.key_c
  assert_equal 34, @key.key_d
end

def test_random_key_gen
assert_equal 5, @key.key_random.length
end

end
