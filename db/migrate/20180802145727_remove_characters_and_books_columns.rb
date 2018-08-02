class RemoveCharactersAndBooksColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :characters, :books
    remove_columns :books, :characters
  end
end
