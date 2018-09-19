class CreateDutyworks < ActiveRecord::Migration[5.1]
  def change
    create_table :dutyworks do |t|
      t.references :dutydeal, foreign_key: true
      t.references :flowwork, foreign_key: true
      t.integer :seltype
      t.integer :addtype
      t.integer :updtype
      t.integer :deltype

      t.timestamps
    end
  end
end
