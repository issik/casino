require "pry"
require_relative "player"
class Roulette

    attr_accessor :bet, :num, :col, :player

  def initialize(player)
    @bet = 0
    @num = 0
    @col = ""
    puts "Welcome to the roulette Wheel #{player.name}"
    puts "1) Make a bet"
    puts "2) Return to Casino lobby"
    input = gets.to_i
    if input == 1
        start(player)
    elsif input == 2
        exit
    else
        puts "Please pick 1 or 2 ===D~nose"
    end
    
  end  
    
  def start(player)
    puts "How much would you like to bet?? ($#{player.wallet.amount}"
    @bet = gets.to_f
    puts "What number do you pick?(1 through 36)"
    @num = gets.to_i
    puts "What color do you want 1) Black or 2)Red? 1 or 2"
    @col = gets.to_i - 1
    puts "type spin to spin the wheel!"
    ws = gets.strip
    puts "---SPINNING---"
    spin(player)
  end

  def spin(player)
    arr = rand(1..36)
    puts "Wheel number is #{arr}"
    br = rand(1)
      if br == 0
        puts "Wheel color is black"
      else br == 1
        puts "Wheel color is Red"
      end
      checking(arr, br, player)
    end

  def checking(arr, br, player)
    if @num == arr && @col == br
      then
        puts "You win x2!"
        player.wallet.amount += (@bet*2)
    elsif @num == arr
        puts "You win x1!"
        player.wallet.amount += @bet
    elsif @col == br
         puts "You win x1!"
         player.wallet.amount += @bet
    else 
        puts "Donald Trump Says your a Loser"
        player.wallet.amount -= @bet
    end
  end
end #get final wallet amount to go back to player?