class CreateCaseworklinethings < ActiveRecord::Migration[5.1]
  def change
    create_table :caseworklinethings do |t|
      t.references :casework, foreign_key: true
      t.references :caseitem, foreign_key: true
      t.references :kind, foreign_key: true
      t.references :thing, foreign_key: true
      t.string :thingcode
      t.string :thingname
      t.integer :quantity
      t.text :unit
      t.text :remarks
      t.date :begindate
      t.date :enddate
      t.integer :fromwhscode
      t.integer :towhscode
      t.integer :status

      t.timestamps
    end
  end
end
