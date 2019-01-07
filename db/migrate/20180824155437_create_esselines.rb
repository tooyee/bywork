class CreateEsselines < ActiveRecord::Migration[5.1]
  def change
    create_table :esselines do |t|
      t.references :esse, foreign_key: true
      t.string :code
      t.string :name
      t.integer :esselinetype
      t.text :remarks

      t.timestamps
    end
  end
end
