class AddUrlIdColumnToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :character_url_id, :integer
  end
end
