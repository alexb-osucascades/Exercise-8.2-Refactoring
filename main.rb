class Game

  def get_results()
    raise "Not implemented"
  end

  def play()
    raise "Not implemented"
  end
  
end


class Poker < Game
  def initialize(players)
    @players = players
    @hands = []
    players.length().times { |x| @hands.append(nil) }
  end

  def play()
    puts "Players in the poker game:"
    @players.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are poker results]"
  end

  def get_player_name(i)
    return @players[i]
  end

  def get_player_hand(i)
    return @hands[i]
  end
end

class Chess < Game
  def initialize(players)
    @players = players
  end

  def play()
    puts "Players in the chess game:"
    @players.length().times { |x| puts "#{self.get_player_name(x)}: #{@players[x][1]}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end

  def get_player_name(i)
    @players[i][0]
  end
end

class GoPlayer
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end

class Go < Game
  def initialize(players)
    @players = []
    players.each { |x, y| @players.append(GoPlayer.new(x, y)) }
  end

  def play()
    puts "Players in the go game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are go results]"
  end
end



list_of_games = [
  Go.new([["alice", "white"], ["bob", "black"]]),
  Chess.new([["alice", "white"], ["bob", "black"]]), 
  Poker.new(["alice", "bob", "chris", "dave"])
]


list_of_games.each do |game|
  game.play()
  puts
  puts game.get_results()
end

