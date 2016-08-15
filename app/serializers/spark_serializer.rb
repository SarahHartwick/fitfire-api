#
class SparkSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :verification, :criteria, :deadline, :video, :photo, :user, :influencer
  def user
    object.user.id
  end
  def influencer
    object.influencer.id
  end
end
