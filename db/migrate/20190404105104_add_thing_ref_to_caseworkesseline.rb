class AddThingRefToCaseworkesseline < ActiveRecord::Migration[5.1]
  def change
    add_reference :caseworkesselines, :thing, foreign_key: true
  end
end
