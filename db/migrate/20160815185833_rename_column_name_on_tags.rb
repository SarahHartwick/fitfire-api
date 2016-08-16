class RenameColumnNameOnTags < ActiveRecord::Migration
  def change
    rename_column :tags, :name, :text
  end
end
