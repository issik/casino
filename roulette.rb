require `pry`
require_relative `player`
class Roulette

    attr_accessor : @bet, @num, @col

  def initialize(Player)
    puts "Welcome to the roulette Wheel #{player.name}"
    puts "1) Make a bet"
    puts "2) Return to Casino lobby"
    input = gets.to_i(i -1)
    if input == 1
        start
    if input == 2
        exit
    if else
        puts "Please pick 1 or 2 ===D~nose"
      menu
    end
    
  end  
    
  def start
    puts "How much would you like to bet?? ($#{@player.wallet.amount}"
    @bet = gets.to_f
    puts "What number do you pick?"
    @num = gets.to_i
    puts "What color do you want?"
    @col = gets.strip
    puts "type spin to spin the wheel!"
    spin = gets.strip
    puts "---SPINNING---"
    
  end

  def spin
    arr = rand(0..36)
      puts "Wheel number is #{arr}"
    br = rand(1, 2)
      if br == 1
        then
        puts "Wheel color is black"
      if br === 2
        then
        puts "Wheel color is Red"
      end
    end

  def checking
    if @num = arr
        then 
        puts "You win x1!"
        do.(@bet*1)
    if @col = br
        puts "You win x1!"
        do.(@bet*1)
    elsif (@num, @col) = (arr,br)
        then
        puts "You win x2!"
        do.(@bet*2)
    end


  
initialize 


end 
 # def Wheel

# has numbers ranging 0-36 and even/ odd black/ red
#randomize the number  and the color 

