#
class AddInfluencerToSparks < ActiveRecord::Migration
  def change
    add_reference :sparks, :influencer, index: true, foreign_key: true
  end
end
