class UpdateMiceColumnsInSchema < ActiveRecord::Migration
  def change
    change_column :mice, :somites, :integer
    change_column :mice, :dpc, :decimal
  end
end
