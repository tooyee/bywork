class CreateKinds < ActiveRecord::Migration[5.1]
  def change
    create_table :kinds do |t|
      t.references :casework, foreign_key: true
      t.string :code
      t.string :name
      t.text :remarks
      t.integer :kindtype
      t.integer :status

      t.timestamps
    end
  end
end
