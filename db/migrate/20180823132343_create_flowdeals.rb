class CreateFlowdeals < ActiveRecord::Migration[5.1]
  def change
    create_table :flowdeals do |t|
      t.references :flowitem, foreign_key: true
      t.references :unitdeal, foreign_key: true
      t.integer :dealtype
      t.integer :floworderid
      t.integer :flowtype

      t.timestamps
    end
  end
end
