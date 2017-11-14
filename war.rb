require 'pry'
require 'colorize'

class War
   attr_accessor :player
   def initialize
    @house = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @player = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    puts "1) Play WAR!"
    puts "2) Exit"
    var = gets.strip.to_i
    case
      when var == 1
        puts draw
      when var == 2
        exit(0)
      end
      initialize
   end

   def draw
    local_wallet = []
    puts "Place your bet"
    user_amount = gets.strip.to_f
    local_wallet << user_amount
    p = @player.sample
    h = @house.sample
    puts "Player #{p}"
    puts "House #{h}"
    puts "\n"
    case
      when p > h
      puts "Winner".green
      puts "\n"
      when p < h
      puts "Loser".red
      puts "\n"
      when p == h
      puts "Draw".light_blue
      puts "\n"
    end
   end
end
