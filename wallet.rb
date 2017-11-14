class Wallet
  HIGH_ROLLER = 500 

  attr_accessor :amount

  def initialize(amount)
    @amount = amount
    if amount > HIGH_ROLLER
      `say Ooooo...high roller!`
    end
  end
end
