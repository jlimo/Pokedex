class TeamsController < ApplicationController
    def list
        @teams = Team.all
    end
    def show
    @team = Team.find(params[:id])
    end

    def new
        @team = Team.new
        @pokemon_team = Pokemon_team.all
    end

    def create
        @team = Team.new(team_params)

        if @team.save
            redirect_to :action => 'list'
        else
            @pokemon_teams = pokemon_teams.all
            render :action => 'new'
    end
end

    def edit
        @team = team.find(params[:id])
        @pokemon_teams = pokemon_teams.all
    end
    def team_params
        params.require(:teams).permit(:name, :user_id)
        end

    def update
        @team = Team.find(params[:id])

        if @team.update_attributes(team_param)
            redirect_to :action => 'show', :id => @team
        else
            @pokemon_teams = Pokemon_team.all
            render :action => 'edit'
    end
end
    def delete
        Team.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

    def show_subjects
        @pokemon_team = Pokemon_team.find(params[:id])
    end
end