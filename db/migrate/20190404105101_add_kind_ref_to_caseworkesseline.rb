class AddKindRefToCaseworkesseline < ActiveRecord::Migration[5.1]
  def change
    add_reference :caseworkesselines, :kind, foreign_key: true
  end
end
