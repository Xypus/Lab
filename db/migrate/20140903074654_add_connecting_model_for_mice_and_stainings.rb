class AddConnectingModelForMiceAndStainings < ActiveRecord::Migration
  def change
    create_table :mouse_stainings do |t|
      t.belongs_to :mouse
      t.belongs_to :staining
    end
  end
end
