require('minitest/autorun')
require('minitest/reporters')
require_relative('../sport_team')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test


def setup()
  @team = SportTeam.new("Stars", ["John Ross", "Yukiko Miura", "Jen Anderson", "David White"] ,"Mark Smith")
end

# test setters

def test_team_name
  assert_equal("Stars", @team.team_name)
end

def test_team_players
  assert_equal(["John Ross", "Yukiko Miura", "Jen Anderson", "David White"], @team.players)
  assert_equal("Yukiko Miura", @team.players[1])
end

def test_team_coach
  assert_equal("Mark Smith", @team.coach)
end

# test getters

def test_set_coach
  @team.coach = "Anakin Skywalker"
  assert_equal("Anakin Skywalker", @team.coach)
end

# test functions

def test_add_new_player
  @team.add_new_player("Steve Wong")
  assert_equal(["John Ross", "Yukiko Miura", "Jen Anderson", "David White", "Steve Wong"], @team.players)
  assert_equal("Steve Wong", @team.players.last())
end

def test_is_player_there
  assert_equal(true, @team.is_player_there("Yukiko Miura"))
  assert_equal(false, @team.is_player_there("Josh Hong"))
end

def test_update_points_won
  assert_equal(1, @team.update_points("won"))
end

def test_update_points_lost
  assert_equal(nil, @team.update_points("lost"))
end


end
