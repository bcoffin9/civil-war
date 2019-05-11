class RenameTypeOnScene < ActiveRecord::Migration[5.2]
  def change
  	rename_column :scenes, :type, :type_of_scene
  end
end
