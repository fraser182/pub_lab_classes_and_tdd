class Pub

  attr_reader :name, :till


  def initialize(name, till, drinks_list)
    @name = name
    @till = till
    @drinks_list = drinks_list
  end

  # Count number of drinks in an array
  def count_drinks
    return @drinks_list.count
  end

  # Finds the drink and deletes it. Returns the new array without the sold drink
  def sell_a_drink(drink)
    if @drinks_list.include?(drink)
      return @drinks_list.delete(drink)
    end
    return nil
  end

# Increased the till amount by the value of the drink sold (@drink1)
  def increase_till_amount(drink_price)
   @till += drink_price
  end


end
