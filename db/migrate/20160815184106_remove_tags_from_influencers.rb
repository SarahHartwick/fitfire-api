class RemoveTagsFromInfluencers < ActiveRecord::Migration
  def change
    remove_column :influencers, :tags
  end
end
