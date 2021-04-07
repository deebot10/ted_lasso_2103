class League
  attr_reader :name,
              :teams

  def initialize(name)
    @name  = name
    @teams = []
  end

  def add_team(team_name)
    @teams << team_name
  end

  def captains
    wage = []
    captains = []
    @teams.map do |team|
      team.players.each do |player|
        wage << player.salary
      end
    end
    @teams.map do |team|
      team.players.each do |player|
        if player.salary == wage.max
          captains << player
        end
      end
      captains
    end
  end
end
