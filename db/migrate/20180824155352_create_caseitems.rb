class CreateCaseitems < ActiveRecord::Migration[5.1]
  def change
    create_table :caseitems do |t|
      t.string :code
      t.string :name
      t.references :flowitem, foreign_key: true
      t.integer :status
      t.text :remarks

      t.timestamps
    end
  end
end
