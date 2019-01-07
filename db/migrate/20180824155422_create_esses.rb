class CreateEsses < ActiveRecord::Migration[5.1]
  def change
    create_table :esses do |t|
      t.string :code
      t.string :name
      t.integer :essetype

      t.timestamps
    end
  end
end
