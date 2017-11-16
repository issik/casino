require 'pry'

class GREATGENIE
  GENIE = ['is this about a man?', 'who hurt you?', 'what do you think this means?', 'sorry i didnt catch
    that... try again' , 'where do you see this taking you in life?', 'i dont want to hurt youtr feelings..',
       'Dont count on it men are useless','My sources say no', 'Very doubtful'] #possible answers
  PATH_2 = ['THIS', 'IS', 'SPARTA']
  attr_accessor :answers

  def initialize
    @answers = Array.new(GENIE)
    follow_up
  end

  def follow_up
    puts ' Type a question to get an answer, or type X to end the program.'
      input = gets.strip
      case input
      when 'yes'
        @array = Array.new(PATH_2)
        puts "#{@array.sample}"
      when "X"
         exit
      else
        follow_up
      end

  end

  def ask_question
    puts "Type a question to get an answer, or type QUIT to end the program."
    question = gets.strip
    # Bonus functionality using easter eggs
    case question
    when 'yes'
        add_answers
      when 'no'
        reset_answers
      when 'print_answers'
        print_answer_bank
      else
        question
    end
  end

  def reset_answers
    @answers = Array.new(GENIE)
    puts "you have been thinking about this for a while have you no"
    print_answer_bank
  end

  def print_answer_bank
    puts "The current answer bank is:\n#{answers.join("\n")}"
  end

  def add_answers
    puts "You are adding more answers for this run."
    print_answer_bank
    puts "How many more answers do you want to add?"
    number_to_add = gets.to_i
    added = 0
    number_to_add.times do
      puts "Type your answer to add:"
      answer = gets.strip
      if answers.include?(answer)
        puts "#{answer} was not added because the eight ball already contains it."
      else
        @answers << answer
        added += 1
      end
    end
    if added == 0
      puts "You did not add any new answers to the Magic Eight Ball."
    else
      puts "You've successfully added #{added} answers to the eight ball."
      print_answer_bank
    end
  end
end

eight = GREATGENIE.new
#followup =
# Getting the first script arg then clearing the args so we can do `gets` successfully
#first_arg = ARGV[0].strip if ARGV[0]
#ARGV.clear

# Bonus functionality using script args
#eight.add_answers if first_arg == 'add_answers'

# Basic functionality
# while true
#   question = eight.ask_question
#   if question == 'QUIT'
#     puts "Thanks for stopping by don't forget to tip. Please play again!"
#     exit
#   else
#     puts "The spirits are telling me: #{eight.answers.sample}"
#   if question == 'maybe'
#     puts "MAKE UP YOUR MIND"
#   end
# end
# end

#click to play #have a question in mind
#don't know - random
#maybe
#probably not
