class RenameCharacterColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :characters, :allegiances, :house
    rename_column :characters, :tv_seasons, :tv_season
  end
end
