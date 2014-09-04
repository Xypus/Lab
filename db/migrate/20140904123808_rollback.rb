class Rollback < ActiveRecord::Migration
   def change
    remove_column :cultures,  :plate_id, :integer
    remove_column :stainings, :plate_id, :integer
    add_column    :plates, :plateable_id, :integer
  end
end
