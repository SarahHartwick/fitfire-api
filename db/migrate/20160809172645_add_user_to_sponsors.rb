class AddUserToSponsors < ActiveRecord::Migration
  def change
    add_reference :sponsors, :user, index: true, foreign_key: true
  end
end
