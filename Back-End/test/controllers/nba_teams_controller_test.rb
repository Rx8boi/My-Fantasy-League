require 'test_helper'

class NbaTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nba_team = nba_teams(:one)
  end

  test "should get index" do
    get nba_teams_url, as: :json
    assert_response :success
  end

  test "should create nba_team" do
    assert_difference('NbaTeam.count') do
      post nba_teams_url, params: { nba_team: { image: @nba_team.image, name: @nba_team.name, player: @nba_team.player } }, as: :json
    end

    assert_response 201
  end

  test "should show nba_team" do
    get nba_team_url(@nba_team), as: :json
    assert_response :success
  end

  test "should update nba_team" do
    patch nba_team_url(@nba_team), params: { nba_team: { image: @nba_team.image, name: @nba_team.name, player: @nba_team.player } }, as: :json
    assert_response 200
  end

  test "should destroy nba_team" do
    assert_difference('NbaTeam.count', -1) do
      delete nba_team_url(@nba_team), as: :json
    end

    assert_response 204
  end
end
