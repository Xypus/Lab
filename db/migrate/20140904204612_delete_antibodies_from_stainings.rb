class DeleteAntibodiesFromStainings < ActiveRecord::Migration
  def change
    remove_column :stainings, :antibodies, :string
  end
end
