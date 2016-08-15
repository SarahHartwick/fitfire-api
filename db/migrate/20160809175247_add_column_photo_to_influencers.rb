class AddColumnPhotoToInfluencers < ActiveRecord::Migration
  def change
    add_column :influencers, :photo, :string
    add_column :profiles, :photo, :string
    add_column :sponsors, :photo, :string
  end
end
