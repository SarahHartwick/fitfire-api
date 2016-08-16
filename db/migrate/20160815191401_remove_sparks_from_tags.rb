class RemoveSparksFromTags < ActiveRecord::Migration
  def change
    remove_column :tags, :spark_id
  end
end
