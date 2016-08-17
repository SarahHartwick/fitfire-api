#
class Tagging < ActiveRecord::Base
  belongs_to :spark, inverse_of: :taggings
  belongs_to :tag, inverse_of: :taggings
end
