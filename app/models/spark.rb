#
class Spark < ActiveRecord::Base
  belongs_to :user, inverse_of: :sparks
  belongs_to :influencer, inverse_of: :sparks
  has_many :taggings, inverse_of: :spark, dependent: :destroy
end
