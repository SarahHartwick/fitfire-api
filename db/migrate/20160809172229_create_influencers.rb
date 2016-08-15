class CreateInfluencers < ActiveRecord::Migration
  def change
    create_table :influencers do |t|
      t.string :firstName
      t.string :lastName
      t.string :description
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :snapchat
      t.string :profession
      t.text :certifications
      t.text :tags
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
