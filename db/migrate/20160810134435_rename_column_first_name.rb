class RenameColumnFirstName < ActiveRecord::Migration
  def change
    rename_column :influencers, :firstName, :firstname
    rename_column :influencers, :lastName, :lastname
  end
end
