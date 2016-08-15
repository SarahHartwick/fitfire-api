class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstName
      t.string :lastName
      t.string :description
      t.text :tags
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
