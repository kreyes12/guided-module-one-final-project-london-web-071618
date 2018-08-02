class AddColumnsToBookCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :book_characters, :book_id, :integer
    add_column :book_characters, :character_id, :integer
  end
end
