class AddPlateNumber < ActiveRecord::Migration
  def change
    add_column :plates, :plate_number, :string
  end
end
