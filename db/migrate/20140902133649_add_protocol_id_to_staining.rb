class AddProtocolIdToStaining < ActiveRecord::Migration
  def change
    add_column :stainings, :protocol_id, :integer
  end
end
