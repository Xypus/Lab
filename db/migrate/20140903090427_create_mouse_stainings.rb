class CreateMouseStainings < ActiveRecord::Migration
  def change
    create_table :mouse_stainings do |t|
      t.belongs_to :mouse, index: true
      t.belongs_to :staining, index: true

      t.timestamps
    end
  end
end
