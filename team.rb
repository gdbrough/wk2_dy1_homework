class Team
  attr_reader :name, :players, :coach, :points
  attr_writer :name, :players, :coach, :points

  def initialize(team_name, team_players, team_coach, team_points)
    @name = team_name
    @players = team_players
    @coach = team_coach
    @points = team_points
  end

  def find_player_by_name(search_name)
    for player in @players
      if player == search_name
        return "#{search_name} is a player."
      end
    end
  end

  def update_points(string)
    if string == "win"
      @points += 1
    end
  end
end
