class UpdateCharacters < ActiveRecord::Migration[5.0]
  def change
    remove_column :characters, :allegiance
    add_column :characters, :house_id, :integer
  end
end
