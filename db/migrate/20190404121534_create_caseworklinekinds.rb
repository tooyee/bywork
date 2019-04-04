class CreateCaseworklinekinds < ActiveRecord::Migration[5.1]
  def change
    create_table :caseworklinekinds do |t|
      t.references :casework, foreign_key: true
      t.references :caseitem, foreign_key: true
      t.references :kind, foreign_key: true
      t.integer :quantity
      t.decimal :price
      t.decimal :cost
      t.integer :vatgroup
      t.integer :whscode
      t.integer :status
      t.integer :openqty
      t.integer :baseid

      t.timestamps
    end
  end
end
