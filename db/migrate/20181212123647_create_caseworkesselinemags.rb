class CreateCaseworkesselinemags < ActiveRecord::Migration[5.1]
  def change
    create_table :caseworkesselinemags do |t|
      t.references :casework, foreign_key: true
      t.references :esse, foreign_key: true
      t.string :code
      t.string :name
      t.integer :esselinetype
      t.text :remarks
      t.integer :status

      t.timestamps
    end
  end
end
