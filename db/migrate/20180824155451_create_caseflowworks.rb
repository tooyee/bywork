class CreateCaseflowworks < ActiveRecord::Migration[5.1]
  def change
    create_table :caseflowworks do |t|
      t.string :code
      t.string :name
      t.references :casedeal, foreign_key: true
      t.integer :accouttype
      t.integer :floworderid
      t.integer :flowtype
      t.integer :vouchertemplatetype
      t.integer :contenttype
      t.integer :resourcestype
      t.integer :subdealtype
      t.integer :stockaccounttype
      t.integer :copyresourcestype
      t.integer :beforeunitwork_id
      t.integer :afterunitwork_id

      t.timestamps
    end
  end
end
