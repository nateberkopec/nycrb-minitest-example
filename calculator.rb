require "minitest/autorun"

def convert(temp, unit_a, unit_b)
  if unit_a == "F" && unit_b == "C"
    ((temp - 32) * 0.5556).round
  elsif unit_a == "C" && unit_b == "F"
    (temp * 1.8 + 32).round
  elsif unit_a == unit_b
    temp
  end
end

class TestCalculator < Minitest::Test
  def test_converts_0C_to_32F
    assert_equal 32, convert(0,"C","F")
  end

  def test_100C_to_212F
    assert_equal 212, convert(100,"C","F")
  end

  def test_32F_to_0C
    assert_equal 0, convert(32,"F","C")
  end

  def test_212F_to_100C
    assert_equal 100, convert(212,"F","C")
  end

  def test_100F_to_100F
    assert_equal 100, convert(100,"F","F")
  end

  def test_100C_to_100C
    assert_equal 100, convert(100,"C","C")
  end
end
