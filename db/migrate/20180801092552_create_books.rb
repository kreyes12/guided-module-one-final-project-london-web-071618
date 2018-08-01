class CreateBooks < ActiveRecord::Migration[5.0]
  def change
        create_table :books do |t|
          t.string :name
          t.string :author
          t.string :publisher
          t.integer :number_of_pages
          t.datetime :released
          t.references :character, index: true, foreign_key: true
        end
    end
end
