class MainGame
  # contains the questions and the players
  # so that the two classes can interact
  # with each other

  # will transfer from player to player
  # after each question

  attr_accessor :current_player

  def initialize
    @player_one = Player.new
    @player_two = Player.new
    @current_player = @player_one

    @player_one.start
    @player_two.start
  end

  def start_game
    while true
      puts "----- NEW TURN -----"
      @quest = Question.new

      answer = @quest.answer
      num1 = @quest.num1
      num2 = @quest.num2
      puts "#{@current_player.name}: What does #{num1} + #{num2} equal?"

      print "> "
      choice = $stdin.gets.chomp

      if choice.to_i === answer
        puts "Correct!"
      
        check_for_winner

      else
        puts "Seriously? No!"
        @current_player.health = @current_player.health - 1 
      
        check_for_winner
      end
      change_player
    end
  end

  def change_player
    if @current_player == @player_one
      @current_player = @player_two
    else 
      @current_player = @player_one
    end
  end

  def check_for_winner
    if @current_player.health == 0
      change_player
      puts "#{@current_player.name} wins with a score of #{@current_player.health}/3"
      puts "----- GAME OVER -----"
      exit(0)
    else
      puts "#{@player_one.name}: #{@player_one.health}/3 vs #{@player_two.name}: #{@player_two.health}/3"
    end
  end
end