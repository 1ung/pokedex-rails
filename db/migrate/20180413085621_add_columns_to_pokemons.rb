class AddColumnsToPokemons < ActiveRecord::Migration[5.2]
  def change
      add_column :pokemons, :num, :int
      add_column :pokemons, :name, :string
      add_column :pokemons, :img, :string
      add_column :pokemons, :height, :string
      add_column :pokemons, :weight, :string
      add_column :pokemons, :candy, :string
      add_column :pokemons, :candy_count, :integer
      add_column :pokemons, :egg, :string
      add_column :pokemons, :avg_spawns, :integer
      add_column :pokemons, :spawn_time, :string
  end
end
