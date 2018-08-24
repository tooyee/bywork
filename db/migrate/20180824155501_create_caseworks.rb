class CreateCaseworks < ActiveRecord::Migration[5.1]
  def change
    create_table :caseworks do |t|
      t.string :code
      t.string :name
      t.references :caseflowwork, foreign_key: true
      t.integer :buyid
      t.string :buycode
      t.string :buyname
      t.integer :sellid
      t.string :sellcode
      t.string :sellname
      t.integer :salesid
      t.string :salescode
      t.string :salesname
      t.integer :status
      t.text :remarks

      t.timestamps
    end
  end
end
