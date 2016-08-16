class RemoveTagsFromSparks < ActiveRecord::Migration
  def change
    remove_column :sparks, :tags
  end
end
