class CreateCultures < ActiveRecord::Migration
  def change
    create_table :cultures do |t|
      t.string :starting_date
      t.string :termination_date
      t.text :culture_details
      t.string :schema_1
      t.string :schema_2
      t.string :schema_3
      t.string :schema_4
      t.string :schema_5
      t.string :schema_6
      t.string :schema_7
      t.string :schema_8

      t.timestamps
    end
  end
end
