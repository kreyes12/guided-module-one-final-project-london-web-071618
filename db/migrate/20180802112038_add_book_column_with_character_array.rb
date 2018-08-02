class AddBookColumnWithCharacterArray < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :characters, :string
    end

end
