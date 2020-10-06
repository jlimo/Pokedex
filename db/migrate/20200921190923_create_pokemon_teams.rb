class CreatePokemonTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_teams do |t|
      t.integer :pokemon_id
      t.integer :team_id
    end
  end
end
