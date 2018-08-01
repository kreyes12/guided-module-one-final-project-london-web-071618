class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
        create_table :characters do |t|
          t.string :name
          t.string :gender
          t.string :culture
          t.string :born
          t.string :died
          t.string  :titles
          t.string :aliases
          t.string :father
          t.string :mother
          t.string :spouse
          t.references :house, index: true, foreign_key: true
          t.references :books, index: true, foreign_key: true
        end 
  end
end
