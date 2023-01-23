class Player
  # stores the starting player info
  # has the individual player health

  attr_reader :health

  attr_accessor :player_name, :player_two

  def initialize
    @player_name = ""
    @health = 3
  end

  def start
    print "Player Name> "
    @player_name = $stdin.gets.chomp
  end
end

player = Player.new

player2 = Player.new

player.start

player2.start

puts player.player_name
puts player.health

puts player2.player_name
puts player2.health
