class Wallet
  attr_accessor :dollar_amount

  def initialize(dollar_amount = 0)
    @dollar_amount = dollar_amount
  end

  def add_a_dollar(add_this_dollar_amount_to_the_wallet)
    @dollar_amount += add_this_dollar_amount_to_the_wallet
  end
end
