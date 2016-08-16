#
class Profile < ActiveRecord::Base
  serialize :tags, Array
  belongs_to :user
end
