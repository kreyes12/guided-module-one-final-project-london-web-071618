class UpdateBookCharacters2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :book_characters, :book_url
    remove_column :book_characters, :character_url
    add_column :book_characters, :book_id, :integer
    add_column :book_characters, :character_id, :integer
  end
end
