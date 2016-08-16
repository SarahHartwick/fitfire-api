#
class Spark < ActiveRecord::Base
  belongs_to :user
  belongs_to :influencer, inverse_of: :sparks
  has_many :taggings, inverse_of: :spark
end
