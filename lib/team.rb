class Team
  attr_reader :name,
              :coach,
              :players

  def initialize(name, coach, players)
    @name    = name
    @coach   = coach
    @players = players
  end

  def total_salary
    sum = 0
    @players.each do |player|
      sum += player.salary
    end
    sum
  end

  def captain
    cap = []
    pay = []
    @players.each do |player|
      pay << player.salary
    end
    pay
    @players.each do |player|
      if player.salary == pay.max
        cap << player.name
      end
    end
    cap.join(', ')
  end

  def positions_filled
    positions = []
    @players.each do |player|
      positions << player.position
    end
    positions
  end
end
