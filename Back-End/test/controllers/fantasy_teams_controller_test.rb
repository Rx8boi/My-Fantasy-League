require 'test_helper'

class FantasyTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fantasy_team = fantasy_teams(:one)
  end

  test "should get index" do
    get fantasy_teams_url, as: :json
    assert_response :success
  end

  test "should create fantasy_team" do
    assert_difference('FantasyTeam.count') do
      post fantasy_teams_url, params: { fantasy_team: { bench: @fantasy_team.bench, date: @fantasy_team.date, name: @fantasy_team.name } }, as: :json
    end

    assert_response 201
  end

  test "should show fantasy_team" do
    get fantasy_team_url(@fantasy_team), as: :json
    assert_response :success
  end

  test "should update fantasy_team" do
    patch fantasy_team_url(@fantasy_team), params: { fantasy_team: { bench: @fantasy_team.bench, date: @fantasy_team.date, name: @fantasy_team.name } }, as: :json
    assert_response 200
  end

  test "should destroy fantasy_team" do
    assert_difference('FantasyTeam.count', -1) do
      delete fantasy_team_url(@fantasy_team), as: :json
    end

    assert_response 204
  end
end
