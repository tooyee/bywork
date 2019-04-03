class AddCaseworkRefToEsses < ActiveRecord::Migration[5.1]
  def change
    add_reference :esses, :casework, foreign_key: true
  end
end
