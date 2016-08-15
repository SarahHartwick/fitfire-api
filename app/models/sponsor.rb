#
class Sponsor < ActiveRecord::Base
  serialize :tags, Array
  belongs_to :user
end
