class ChangeDpCfromIntegertoDecimal < ActiveRecord::Migration
  def change
    change_column :mice, :dpc, :decimal
  end
end
