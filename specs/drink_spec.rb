require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")


class DrinksTest < MiniTest::Test

  def setup()
    @drink = Drink.new("Beer", 4)

  end

  def test_get_drink_name()
    assert_equal("Beer", @drink.name)

  end

  def test_get_drink_price()
    assert_equal(4, @drink.price)
  end

end
