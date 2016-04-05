class Player
  include Comparable

  attr_accessor :name, :score

  def <=>(other_player)
    score <=> other_player.score
  end

  def initialize(name, score)
    @name = name
    @score = score
  end
end

player1 = Player.new("Json", 100)
player2 = Player.new("Jonatan", 80)

puts "player1 is greater than player2?  #{player1 > player2}"
