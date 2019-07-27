class Key
  attr_reader :key
  def initialize(key = nil)
    @key = key
  end

  #need to have key make its 75634 into 75 a, 56 b, 63 c,34 d
  def key_a
    @key[0..1].to_i#takes the string "75634" and returns 75
  end

  def key_b
    @key[1..2].to_i
  end

  def key_c
    @key[2..3].to_i
  end

  def key_d
    @key[3..4].to_i
  end


end
