class CreateDutydeals < ActiveRecord::Migration[5.1]
  def change
    create_table :dutydeals do |t|
      t.references :dutyitem, foreign_key: true
      t.references :flowdeal, foreign_key: true
      t.integer :seltype
      t.integer :addtype
      t.integer :updtype
      t.integer :deltype

      t.timestamps
    end
  end
end
