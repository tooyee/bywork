class CreateFlowitems < ActiveRecord::Migration[5.1]
  def change
    create_table :flowitems do |t|
      t.references :unititem, foreign_key: true
      t.string :code
      t.string :name
      t.text :remarks

      t.timestamps
    end
  end
end
