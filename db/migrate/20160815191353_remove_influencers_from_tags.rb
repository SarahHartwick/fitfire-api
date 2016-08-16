class RemoveInfluencersFromTags < ActiveRecord::Migration
  def change
    remove_column :tags, :influencer_id
  end
end
