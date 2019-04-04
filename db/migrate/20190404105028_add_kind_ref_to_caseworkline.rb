class AddKindRefToCaseworkline < ActiveRecord::Migration[5.1]
  def change
    add_reference :caseworklines, :kind, foreign_key: true
  end
end
