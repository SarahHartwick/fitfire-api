class AddTagsToSparks < ActiveRecord::Migration
  def change
    add_column :sparks, :tags, :text
  end
end
