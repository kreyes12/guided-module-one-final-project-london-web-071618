class AddBooksColumnToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :books, :string
  end
end
