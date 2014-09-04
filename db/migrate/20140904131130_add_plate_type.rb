class AddPlateType < ActiveRecord::Migration
  def change
    add_column :plates, :plateable_type, :string 
  end
end
