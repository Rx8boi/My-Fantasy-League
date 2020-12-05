class FantasyTeamsController < ApplicationController
  before_action :set_fantasy_team, only: [:show, :update, :destroy]

  # GET /fantasy_teams
  def index
    @fantasy_teams = FantasyTeam.all

    render json: @fantasy_teams
  end

  # GET /fantasy_teams/1
  def show
    render json: @fantasy_team
  end

  # POST /fantasy_teams
  def create
    @fantasy_team = FantasyTeam.new(fantasy_team_params)

    if @fantasy_team.save
      render json: @fantasy_team, status: :created, location: @fantasy_team
    else
      render json: @fantasy_team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fantasy_teams/1
  def update
    if @fantasy_team.update(fantasy_team_params)
      render json: @fantasy_team
    else
      render json: @fantasy_team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fantasy_teams/1
  def destroy
    @fantasy_team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fantasy_team
      @fantasy_team = FantasyTeam.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fantasy_team_params
      params.require(:fantasy_team).permit(:name, :bench, :date)
    end
end
