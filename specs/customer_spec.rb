require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")


class CustomerTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Fraser", 20)
  end

  def test_get_customer_name()
    assert_equal("Fraser", @customer.name)
  end

  def test_get_customer_wallet()
    assert_equal(20, @customer.wallet)
  end


  def test_customer_wallet_after_buying_a_drink()
    drink5 = Drink.new("Cocktail", 11)
    my_wallet =  @customer.customer_wallet_decrease(drink5.price)
    assert_equal(9, my_wallet)
  end
end
