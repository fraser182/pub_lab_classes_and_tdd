class Customer

  attr_reader :name, :wallet


  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def customer_wallet_decrease(drink_price)
    @wallet -= drink_price
  end

end
