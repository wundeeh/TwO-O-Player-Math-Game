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
end
