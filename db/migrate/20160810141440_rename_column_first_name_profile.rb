class RenameColumnFirstNameProfile < ActiveRecord::Migration
  def change
    rename_column :profiles, :firstName, :firstname
    rename_column :profiles, :lastName, :lastname
  end
end
