require 'colorize'
require 'pry'
require_relative "player"
require_relative "casino"

class Slots


  attr_accessor :player, :bet

  def initialize(player)
    @bet = (0)
    puts "Welcome to Slots"
    puts "1) Play slots...minimum bet is $5.00"
    puts "2) Exit to Casino"
    play = gets.strip.to_i
    case play
      when 1
        menu(player)
      when 2
        puts "Goodbye"
        exit(0)
    end
  end

  def menu(player)
    arr1 = ["\u{2660}".red, "\u{2663}".green, "\u{2666}".blue, "\u{2665}".yellow]
    arr2 = ["\u{2660}".red, "\u{2663}".green, "\u{2666}".blue, "\u{2665}".yellow]
    arr3 = ["\u{2660}".red, "\u{2663}".green, "\u{2666}".blue, "\u{2665}".yellow]
    puts "Minimum bet $5.00. You have: ($#{player.wallet.amount})"
    puts "Place your bet!"
    @bet = gets.strip.to_i
    if @bet < 5
      puts "Need more dough!"
      `say "NEED MORE DOUGH!"`
      initialize(player)
    else @bet > 5
      puts "\n"
      f = arr1.sample
      s = arr2.sample
      t = arr3.sample
      print f
      print s
      puts t
      puts "\n"
    if f == s && s == t
        puts "WINNER"
        `say "winner winner chicken dinner"`
        player.wallet.amount += (@bet*2)
        initialize(player)
    else f != s
        puts "LOSER"
        `say "have a problem? Call 801 566 3390"`
        player.wallet.amount -= @bet
        initialize(player)
      end
  end
    menu(player)
  end
end

# player = Player.new
# Slots.new(player)
# Slots.new # take out at the end
