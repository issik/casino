require 'pry'
require_relative 'player'
require_relative 'high_low'
require_relative 'roulette'
require_relative 'slots'

class Casino
  attr_accessor :player, :options

  def initialize
    puts 'Welcome to the ruby casino!'
    @player = Player.new
    @options = ["High / Low", "Exit", "Roulette", "Slots"]
    menu
  end

  def menu
    @options.each_with_index { |opt, i| puts "#{i + 1}) #{opt}" }
    choice = gets.to_i - 1
    case choice
      when 0
        HighLow.new(@player)
      when 1
        puts "Come again!"
        exit
      when 2
        Roulette.new(@player)
      when 3
        Slots.new(@player)
      else
        puts "Invalid Choice"
    end
    menu
  end
end

Casino.new
