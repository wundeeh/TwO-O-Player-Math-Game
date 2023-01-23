class Question
  # stores all the methods related to
  # questions, answers, messages, etc.

  # this class will contain the question
  # generator and the answer checker

  attr_reader :num1, :num2, :answer, :quest

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def start
    answer = @answer
    puts "What does #{@num1} + #{@num2} equal?"

    print "> "
    choice = $stdin.gets.chomp

    if choice.to_i === answer
      puts "Correct!"
      exit(0)
      # placeholder, should switch to next player
    else
      puts "Seriously? No!"
      exit(0)
      # placeholder, should switch to next player
    end
  end
end

quest = Question.new

quest.start




# test = Question.new

# puts test.num1
# puts "+"
# puts test.num2
# puts "="
# puts test.answer