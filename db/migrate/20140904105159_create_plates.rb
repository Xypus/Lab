class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :p4
      t.string :p5
      t.string :p6
      t.string :p7
      t.string :p8
      t.belongs_to :plateable, index: true

      t.timestamps
    end
  end
end
