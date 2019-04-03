class CreateThings < ActiveRecord::Migration[5.1]
  def change
    create_table :things do |t|
      t.references :casework, foreign_key: true
      t.references :kind, foreign_key: true
      t.string :code
      t.string :name
      t.text :remarks
      t.integer :thingtype
      t.integer :status

      t.timestamps
    end
  end
end
