class CreatedHousesTable < ActiveRecord::Migration[5.0]
    def change
      create_table :houses do |t|
        t.string :url
        t.string :name
        t.string :region
        t.string :coat_of_arms
        t.string :motto
        t.string :current_lord
        t.string :heir
        t.string :overlord
        t.string :founded
        t.string :founder
        t.string :extinct
    end
  end
end
