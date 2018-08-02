class AddColumnsToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :allegiances, :string
    add_column :characters, :tv_seasons, :string
  end
end
