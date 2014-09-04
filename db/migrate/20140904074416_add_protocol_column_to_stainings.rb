class AddProtocolColumnToStainings < ActiveRecord::Migration
  def change
    add_column :stainings, :protocol_text, :text
  end
end
