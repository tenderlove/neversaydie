require "test/unit"
require "neversaydie"

class TestNeverSayDie < Test::Unit::TestCase
  def test_recovers
    assert_raises NeverSayDie do
      NeverSayDie.segv
    end
  end
end
