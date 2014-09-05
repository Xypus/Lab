class RemoveStainingProtocolFromStaining < ActiveRecord::Migration
  def change
    remove_column :stainings, :staining_protocol, :text
  end
end
