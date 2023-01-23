class Player
  # stores the starting player info
  # has the individual player health

  attr_accessor :name, :health

  def initialize
    @name = ""
    @health = 3
  end

  def start
    print "Player Name> "
    @name = $stdin.gets.chomp
  end
end
