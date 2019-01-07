class CreateCaseworkesselines < ActiveRecord::Migration[5.1]
  def change
    create_table :caseworkesselines do |t|
      t.references :casework, foreign_key: true
      t.references :caseitem, foreign_key: true
      t.references :esse, foreign_key: true
      t.references :esseline, foreign_key: true
      t.string :esselinecode
      t.string :esselinename
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
