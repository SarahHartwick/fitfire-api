#
class Tag < ActiveRecord::Base
  has_many :taggings, inverse_of: :tag
  validates :text, :uniqueness => true
end
