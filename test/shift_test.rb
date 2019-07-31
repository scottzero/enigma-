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

  def test_char_set
    expected = ["a","b","c","d",
                "e","f","g","h",
                "i","j","k","l",
                "m","n","o","p",
                "q","r","s","t",
                "u","v","w","x",
                "y","z"," "]
    assert_equal expected, @shift.char_set
  end

  def test_shift_sums_for_key_and_offset
    assert_equal 77, @shift.shift_a
    assert_equal 65, @shift.shift_b
    assert_equal 69, @shift.shift_c
    assert_equal 35, @shift.shift_d
  end

  def test_shift_store
    expected = {
      :shift_a => 77,
      :shift_b => 65,
      :shift_c => 69,
      :shift_d => 35
    }
    assert_equal expected, @shift.shift_store
  end

  def test_can_encrypt
    key_1 = Key.new("02715")
    offset_1 = Offset.new("040895")
    shift_1 = Shift.new(key_1, offset_1)
    assert_equal "keder ohulw", shift_1.encryption("hello world")
  end

  def test_can_decrypt
    key_1 = Key.new("02715")
    offset_1 = Offset.new("040895")
    shift_1 = Shift.new(key_1, offset_1)
    assert_equal "hello world", shift_1.decryption("keder ohulw")
  end
end

end

