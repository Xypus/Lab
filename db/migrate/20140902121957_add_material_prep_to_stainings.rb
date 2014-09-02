class AddMaterialPrepToStainings < ActiveRecord::Migration
  def change
    add_column :stainings, :material_preparation, :text
  end
end
