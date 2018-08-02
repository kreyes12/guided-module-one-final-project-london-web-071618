class RenameBookCharactersTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :bookcharacter, :book_characters
  end
end
