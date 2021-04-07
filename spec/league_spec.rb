require './lib/league'
require './lib/team'
require './lib/player'

RSpec.describe League do
  it 'exists' do
    premier = League.new("Premier League")

    expect(premier.name).to eq("Premier League")
  end
  it 'has no teams currently' do
    premier = League.new("Premier League")

    expect(premier.teams).to eq([])
  end
  it 'can add players to a team' do
    premier = League.new("Premier League")
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])

    premier.add_team(richmond)
    premier.add_team(manchester)

    expect(premier.teams).to eq([richmond, manchester])
  end
  it 'seperates the team captains' do
    premier = League.new("Premier League")
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])

    premier.add_team(richmond)
    premier.add_team(manchester)

    expect(premier.captains).to eq([roy, fernandinho])
  end
end
