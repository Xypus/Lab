class UpdateMiceColumnsInSchema < ActiveRecord::Migration
  def change
    change_column :mice, :somites, 'integer USING CAST(somites AS integer)'
    change_column :mice, :dpc, 'integer USING CAST(dpc AS decimal)'
  end
end
