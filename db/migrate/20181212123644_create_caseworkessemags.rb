class CreateCaseworkessemags < ActiveRecord::Migration[5.1]
  def change
    create_table :caseworkessemags do |t|
      t.references :casework, foreign_key: true
      t.string :code
      t.string :name
      t.integer :essetype
      t.integer :status

      t.timestamps
    end
  end
end
