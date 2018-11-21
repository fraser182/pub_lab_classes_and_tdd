require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Beer", 4)
    @drink2 = Drink.new("Wine", 6)
    @drink3 = Drink.new("Rum",  5)
    @drink4 = Drink.new("Vodka",7)

    drinks_list = [@drink1, @drink2, @drink3, @drink4]

    @pub = Pub.new("Clares", 100, drinks_list)

  end

  def test_get_pub_name()
    assert_equal("Clares", @pub.name)
  end

  def test_pub_till_total()
    assert_equal(100, @pub.till)
  end

  def test_pub_has_drinks()
    count = @pub.count_drinks
    assert_equal(4, count)
  end

  # To sell a drink, we sent to "sell_a_drink" method. With the new array, we run that through the "count_drinks" method, and compares expected vs result
  def test_pub_sells_drink()
    @pub.sell_a_drink(@drink1)
    drinks_count= @pub.count_drinks
    assert_equal(3, drinks_count)
  end

 # To increase the till amount we are suing the function "increase_till_amount" to add @drink1 to till total.
  def test_till_amount_increases()
    @pub.increase_till_amount(@drink1.price)
    assert_equal(104, @pub.till)


  end

end
