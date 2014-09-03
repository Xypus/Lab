class DropTableMouseStainings < ActiveRecord::Migration
  def change
    drop_table :mouse_stainings
  end
end
