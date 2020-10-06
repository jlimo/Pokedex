class AddTextStats < ActiveRecord::Migration[6.0]
  def change
    add_column :pokemons, :stats, :text 
    
  end
end
