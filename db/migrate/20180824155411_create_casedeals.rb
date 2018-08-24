class CreateCasedeals < ActiveRecord::Migration[5.1]
  def change
    create_table :casedeals do |t|
      t.string :name
      t.references :caseitem, foreign_key: true
      t.integer :dealtype
      t.integer :floworderid
      t.integer :flowtype

      t.timestamps
    end
  end
end
