class Influencer < ActiveRecord::Base
  belongs_to :user
  serialize :certifications, Array
  serialize :tags, Array
end
