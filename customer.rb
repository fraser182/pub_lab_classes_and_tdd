class Customer

  attr_reader :name, :wallet


  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def customer_wallet_decrease(drink_price)
    @wallet -= drink_price
  end

  # A Customer should be able to buy a Drink from the Pub, reducing
  # the money in its wallet and increasing the money in the Pub's till
  def customer_buys_drink(pub, drink)

    # customer wants a drink - is it available?
    drink_removed = pub.sell_a_drink(drink)
    if drink_removed != nil
      # wallet decrease
      customer_wallet_decrease(drink.price)

      # till increase
      till_increase = pub.increase_till_amount(drink.price)
      return drink_removed
    end

  end
end
