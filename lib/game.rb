
class Game
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players.first
    @opponent_player = @players.last
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end
  
  def attack(player)
    player.reduce_health
    # switch
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def switch
    if @current_player == player1
      @opponent_player = player1
      @current_player = player2
    else
      @current_player = player1
      @opponent_player = player2
    end
  end

  def current_player
    @current_player
  end

  def opponent_player
    @opponent_player
  end
end
