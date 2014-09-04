class RemoveSchemasFromCulturesAndStainings < ActiveRecord::Migration
  def change
    remove_column :stainings, :schema_1
    remove_column :stainings, :schema_2
    remove_column :stainings, :schema_3
    remove_column :stainings, :schema_4
    remove_column :stainings, :schema_5
    remove_column :stainings, :schema_6
    remove_column :stainings, :schema_7
    remove_column :stainings, :schema_8
    remove_column :cultures, :schema_1
    remove_column :cultures, :schema_2
    remove_column :cultures, :schema_3
    remove_column :cultures, :schema_4
    remove_column :cultures, :schema_5
    remove_column :cultures, :schema_6
    remove_column :cultures, :schema_7
    remove_column :cultures, :schema_8
  end


end
