class CreateScene < ActiveRecord::Migration[5.2]
  def change
    create_table :scenes do |t|
      t.string "name"
      t.string "type"
      t.text "description"
      t.references :battle
    end
  end
end
