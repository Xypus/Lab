class PlatesAssocReverse < ActiveRecord::Migration
  def change
    add_column :cultures,  :plate_id, :integer
    add_column :stainings, :plate_id, :integer
    remove_column :plates, :plateable_id
  end
end
