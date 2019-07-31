require './test/test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_encrypt
    assert_equal "keder ohulw", @enigma.encrypt("hello world", "02715", "040895")
  end


  def test_it_can_decrypt
    assert_equal "hello world", @enigma.decrypt("keder ohulw", "02715", "040895")
  end
end

  end
end 
