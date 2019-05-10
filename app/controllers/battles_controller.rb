class BattlesController < ApplicationController
    def index
        @battles = Battle.all
    end

    def show
    	@battle = Battle.find(params[:id])
    end

    def new
    	@battle = Battle.new
    end

    include BattlesHelper
    
    def create
    	@battle = Battle.new(battle_params)
    	@battle.save

        flash.notice = "Battle '#{@battle.title}' Created!"

    	redirect_to battle_path(@battle)
    end

    def destroy
        @battle = Battle.find(params[:id])
        @battle.destroy

        flash.notice = "Battle '#{@battle.title}' Deleted!"

        redirect_to action: "index"
    end

    def edit
        @battle = Battle.find(params[:id])
    end

    def update
        @battle = Battle.find(params[:id])
        @battle.update(battle_params)

        flash.notice = "Battle '#{@battle.title}' Updated!"

        redirect_to battle_path(@battle)
    end
end
