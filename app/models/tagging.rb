class Tagging < ActiveRecord::Base
  belongs_to :spark
  belongs_to :tag
end
