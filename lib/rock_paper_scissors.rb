class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError
    def initialize(msg="Strategy must be one of R,P,S")
      super
    end
  end

  def self.winner(player1, player2)
    unless /[rps]{1}/i.match(player1.at(1))
      raise RockPaperScissors::NoSuchStrategyError
    end
    unless /[rps]{1}/i.match(player2.at(1))
      raise RockPaperScissors::NoSuchStrategyError
    end
    
    case (player1.at(1).downcase)
    when 'r'
      if player2.at(1).downcase == 'p'
        return player2
      else
        return player1
      end
      
    when 'p'
      if player2.at(1).downcase == 's'
        return player2
      else
        return player1
      end
      
    when 's'
      if player2.at(1).downcase == 'r'
        return player2
      else
        return player1
      end
    end
  end

  def self.tournament_winner(tournament)
    unless tournament.at(0).at(0).kind_of?(Array)
      return self.winner(tournament.at(0), tournament.at(1))
    else
      return self.tournament_winner([self.tournament_winner(tournament.at(0)), self.tournament_winner(tournament.at(1))])
    end
  end

end