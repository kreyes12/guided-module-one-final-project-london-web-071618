class CreatedFirstLevelBookTable < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :url
      t.string :name
      t.string :isbn
      t.integer :number_of_pages
      t.string :publisher
      t.string :country
      t.string :mediatype
      t.timestamp :released
    end
  end
end
