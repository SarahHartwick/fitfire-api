class AddColumnSponsorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sponsor, :boolean
    add_column :users, :influencer, :boolean
  end
end
