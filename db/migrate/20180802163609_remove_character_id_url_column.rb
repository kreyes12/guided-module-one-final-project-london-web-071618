class RemoveCharacterIdUrlColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :characters, :character_url_id
  end
end
