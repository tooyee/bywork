class CreateDutyitems < ActiveRecord::Migration[5.1]
  def change
    create_table :dutyitems do |t|
      t.references :role, foreign_key: true
      t.references :flowitem, foreign_key: true
      t.integer :seltype
      t.integer :addtype
      t.integer :updtype
      t.integer :deltype

      t.timestamps
    end
  end
end
