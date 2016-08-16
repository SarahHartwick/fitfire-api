#
class SparkSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :verification, :criteria, :deadline, :category, :video, :photo, :user, :influencer, :taggings
  def user
    object.user.id
  end
  def influencer
    object.influencer.id
  end
  def taggings
    object.taggings.pluck(:id)
  end
end
