class AddLevelToPokemon < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :level, :integer
  end
end
