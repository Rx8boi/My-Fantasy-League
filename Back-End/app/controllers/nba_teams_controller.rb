class NbaTeamsController < ApplicationController
  before_action :set_nba_team, only: [:show, :update, :destroy]

  # GET /nba_teams
  def index
    @nba_teams = NbaTeam.all

    render json: @nba_teams
  end

  # GET /nba_teams/1
  def show
    render json: @nba_team
  end

  # POST /nba_teams
  def create
    @nba_team = NbaTeam.new(nba_team_params)

    if @nba_team.save
      render json: @nba_team, status: :created, location: @nba_team
    else
      render json: @nba_team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nba_teams/1
  def update
    if @nba_team.update(nba_team_params)
      render json: @nba_team
    else
      render json: @nba_team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nba_teams/1
  def destroy
    @nba_team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nba_team
      @nba_team = NbaTeam.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nba_team_params
      params.require(:nba_team).permit(:name, :image, :player)
    end
end
