require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../drink.rb")
require_relative("../pub.rb")


class CustomerTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Fraser", 20)
  end

  # def test_get_customer_name()
  #   assert_equal("Fraser", @customer.name)
  # end
  #
  # def test_get_customer_wallet()
  #   assert_equal(20, @customer.wallet)
  # end
  #
  #
  # def test_customer_wallet_after_buying_a_drink()
  #   drink5 = Drink.new("Cocktail", 11)
  #   my_wallet =  @customer.customer_wallet_decrease(drink5.price)
  #   assert_equal(9, my_wallet)
  # end


  def test_customer_buys_drink_from_pub()
    drink = Drink.new("Vodka and Coke",12)
    pub = Pub.new("Alistairs", 100, [drink])

    @customer.customer_buys_drink(pub, drink) #drink contains whole drink object

    assert_equal(8, @customer.wallet) # customer wallet
    assert_equal(112, pub.till)  # pub till amount goes up
    assert_equal(0, pub.count_drinks) # pub drinks list count
  end

end
