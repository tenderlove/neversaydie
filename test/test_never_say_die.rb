require "test/unit"
require "neversaydie"

class TestNeverSayDie < Test::Unit::TestCase
  def test_called
    assert_raises NeverSayDie do
      NeverSayDie.segv
    end
  end
end
