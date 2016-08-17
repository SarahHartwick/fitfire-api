#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :sparks, inverse_of: :user
  has_one :influencer
  has_one :profile
end
