require 'pry'
require_relative 'player'
require_relative 'high_low'
require_relative 'roulette'
require_relative 'slots'
require_relative 'war'

class Casino
  attr_accessor :player, :options

  def initialize
    puts
    puts "--\u{2663}-\u{2666}--Welcome to RUBY CASINO--\u{2665}-\u{2660}--".green
    puts
    @player = Player.new
    puts "--\u{2663}-\u{2666}--Choose a game!--\u{2665}-\u{2660}--".green
    puts
    @options = ["High / Low", "War", "Roulette", "Slots", "Exit"]
    menu
  end

  def menu
    @options.each_with_index { |opt, i| puts "#{i + 1}) #{opt}" }
    choice = gets.to_i - 1
    case choice
      when 0
        HighLow.new(@player)
      when 1
        War.new
      when 2
        Roulette.new(@player)
      when 3
        Slots.new(@player)
      when 4
        puts "Come again!"
        exit
      else
        puts "Invalid Choice"
    end
    menu
  end
end

Casino.new
