class UpdateBookCharactersTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :book_characters, :book_id
    remove_column :book_characters, :character_id
    add_column :book_characters, :book_url, :string
    add_column :book_characters, :character_url, :string
  end
end
