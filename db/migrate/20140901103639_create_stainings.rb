class CreateStainings < ActiveRecord::Migration
  def change
    create_table :stainings do |t|
      t.string :foetus
      t.string :staining_date
      t.string :schema_1
      t.string :schema_2
      t.string :schema_3
      t.string :schema_4
      t.string :schema_5
      t.string :schema_6
      t.string :schema_7
      t.string :schema_8
      t.string :antibodies
      t.text :staining_protocol
      t.string :results
      t.string :results_file

      t.timestamps
    end
  end
end
