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

  # Finds the drink and deletes it. Returns the new array
  def sell_a_drink(drinks_list)
    if @drinks_list.include?(drinks_list)
      @drinks_list.delete(drinks_list)
    end
    return @drinks_list
  end

# Increased the till amount by the value of the drink sold (@drink1)
  def increase_till_amount(drink_to_sell)
   @till += drink_to_sell
  end

  
end
