class CreateSparks < ActiveRecord::Migration
  def change
    create_table :sparks do |t|
      t.string :name
      t.string :details
      t.string :verification
      t.string :criteria
      t.date :deadline
      t.string :video
      t.string :photo
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
