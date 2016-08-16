#
class TagSerializer < ActiveModel::Serializer
  attributes :id, :text, :taggings
  def taggings
    object.taggings.pluck(:id)
  end
end
