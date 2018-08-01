class CreatedCharacters < ActiveRecord::Migration[5.0]
  def change
      create_table :characters do |t|
        t.string :url
        t.string :name
        t.string :gender
        t.string :culture
        t.string :born
        t.string :died
        t.string :father
        t.string :mother
        t.string :spouse
        t.string :actor
      end
    end
end
