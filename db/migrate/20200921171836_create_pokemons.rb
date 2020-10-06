class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :types
      t.string :description
      t.text :stats
      
      t.timestamps
    end
  end
end
