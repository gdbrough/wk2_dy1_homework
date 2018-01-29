require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test
  def test_returns_team_name()
    team = Team.new("My Team", ["Alexander","James"], "Graeme", 0)
    assert_equal("My Team", team.name())
  end

  def test_returns_players_names()
    team = Team.new("My Team", ["Alexander","James"], "Graeme", 0)
    assert_equal(["Alexander","James"], team.players())
  end

  def test_returns_coach_name()
    team = Team.new("My Team", ["Alexander","James"], "Graeme", 0)
    assert_equal("Graeme", team.coach())
  end

  def test_update_coachs_name()
    team = Team.new("My Team", ["Alexander","James"], "Graeme", 0)
    team.coach = ("Robert")
    assert_equal("Robert", team.coach())
  end

  def test_add_new_player()
    team = Team.new("My Team", ["Alexander","James"], "Graeme", 0)
    team.players.push("Robert")
    assert_equal(["Alexander","James","Robert"], team.players())
  end

  def test_find_player_by_name
    team = Team.new("My Team", ["Alexander","James"], "Graeme", 0)
    assert_equal("James is a player.", team.find_player_by_name("James"))
  end

  def test_update_points_for_win
    team = Team.new("My Team", ["Alexander","James"], "Graeme", 0)
    team.update_points("win")
    assert_equal(1,team.points())
  end

  def test_update_points_for_lose
    team = Team.new("My Team", ["Alexander","James"], "Graeme", 0)
    team.update_points("lose")
    assert_equal(0,team.points())
  end
end
