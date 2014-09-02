class AddCultureIdRemoveMouseIdFromStaining < ActiveRecord::Migration
  def change
    add_column :stainings, :culture_id, :integer
    remove_column :stainings, :mouse_id
  end
end
