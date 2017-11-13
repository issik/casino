require `pry`
require_relative `rwheel`

class roulette

    attr_accessor : @bet, @num, @col, 

  def initialize  
    puts "Welcome to the roulette Wheel #{player.name}"
    puts "How much would you like to bet??"
    @bet = gets.to_f
    puts "What number do you pick?"
    @num = gets.to_i
    puts "What color do you want to lose your money on?"
    @col = gets.strip
    puts "type spin to spin the wheel!"
    spin = gets.strip
    puts "---SPINNING---"
    
  end
   
 # def Wheel

# has numbers ranging 0-36 and even/ odd black/ red
#randomize the number  and the color 

end

