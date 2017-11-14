require 'colorize'
require 'pry'
require_relative "player"

class Slots


  attr_accessor :player, :bet

  def initialize(player)
    @bet = (0)
    puts "--\u{2663}-\u{2666}--Welcome to Slots--\u{2665}-\u{2660}--".magenta
    puts "Match first two any suit \u{2663} \u{2663} \u{2665} win 2X your bet!"
    puts "Match all three any suit \u{2663} \u{2663} \u{2663} win 100X your bet!"
    puts
    puts "1) Play slots...minimum bet is $5.00. You have: $#{player.wallet.amount}" #added
    puts "2) Exit to Casino"
    play = gets.strip.to_i
    case play
      when 1
        menu(player)
      when 2
        Casino
      end
  end

  def menu(player)
    arr1 = ["\u{2660}".yellow, "\u{2663}".green, "\u{2666}".magenta, "\u{2665}".red]
    arr2 = ["\u{2660}".yellow, "\u{2663}".green, "\u{2666}".magenta, "\u{2665}".red]
    arr3 = ["\u{2660}".yellow, "\u{2663}".green, "\u{2666}".magenta, "\u{2665}".red]
    puts "Minimum bet $5.00. You have: $#{player.wallet.amount}"
    if player.wallet.amount <= 0
      puts "You are out of dough!"
      `say "This is a casino not a charity! The A T M is downstairs"`
      exit
    end
    puts "Place your bet!"
    @bet = gets.strip.to_i
    case# case #added
    when player.wallet.amount < @bet
      puts "Nice try!" #added
      `say "You don't have that kind of cash!"` #added
      #added
    when @bet < 5 #change to when maybe
      puts "MINIMUM BET $5.00!"
      `say "DON'T HATE THE PLAYER HATE THE GAME!"`
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
    # end #need this if when statement
    case
    when f == s && f != t
        puts "WINNER"
        `say "winner winner chicken dinner"`
        player.wallet.amount += (@bet*2)
        initialize(player)
    when f == s && s == t
        puts "JACKPOT!"
        `say "JACKPOT"`
        player.wallet.amount += (@bet*100)
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
