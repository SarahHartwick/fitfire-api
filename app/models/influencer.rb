#
class Influencer < ActiveRecord::Base
  belongs_to :user, inverse_of: :influencer
  has_many :sparks, inverse_of: :influencer
  serialize :certifications, Array
end
