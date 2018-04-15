class PokemonsController < ApplicationController
    def index
        @pokemons = Pokemon.all
    end
    
    def show
        @pokemons = Pokemon.find(params[:id])
    end

    def new
    end

    def edit
        @pokemons = Pokemon.find(params[:id])
    end

    def create
        @pokemons = Pokemon.new(pokemons_params)

        @pokemons.save
        redirect_to @pokemons
    end

    private def pokemons_params
        params.require(:pokemon).permit(:num, :name, :img, :height, :weight, :candy, :candy_count, :egg, :avg_spawns, :spawn_time)
    end

    def update
        @pokemons = Pokemon.find(params[:id])

        @pokemons.update(pokemons_params)
        redirect_to @pokemons
    end

    def destroy
        @pokemons = Pokemon.find(params[:id])
        @pokemons.destroy

        redirect_to pokemons_path
    end
end