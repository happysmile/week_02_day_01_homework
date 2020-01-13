class SportTeam

  attr_reader :team_name, :players, :coach
  attr_writer :coach

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

 def add_new_player(player_name)
   @players.push(player_name)
 end

 def is_player_there(player_name)
   players = @players
   found = false
   for player in players
     if(player == player_name)
       return found = true
     end
   end
   return found
 end

 def update_points(result)
   if(result == "won")
     @points +=1
   end
 end


end
