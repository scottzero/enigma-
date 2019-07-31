class Key
  attr_reader :key
  def initialize(key = nil)
    @key = key
  end

  def key_a
    @key[0..1].to_i
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

  def key_random
    Random.rand(100000).to_s.rjust(5, "0")
  end
  
end
