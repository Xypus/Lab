class AddAssociationKeys < ActiveRecord::Migration
  def change
    add_column :mice, :culture_id, :integer
    add_column :stainings, :mouse_id, :integer
  end
end
