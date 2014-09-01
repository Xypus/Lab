class CreateMice < ActiveRecord::Migration
  def change
    create_table :mice do |t|
      t.integer :number
      t.string :mating_date
      t.string :dpc
      t.string :somites
      t.string :experiments
      t.text :notes

      t.timestamps
    end
  end
end
