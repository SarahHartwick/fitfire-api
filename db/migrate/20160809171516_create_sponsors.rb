#
class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :description
      t.string :website
      t.string :industry
      t.text :tags

      t.timestamps null: false
    end
  end
end
