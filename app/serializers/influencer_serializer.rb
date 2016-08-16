#
class InfluencerSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :description, :facebook, :twitter,
   :instagram, :snapchat, :profession, :photo, :certifications, :user, :sparks

  def user
  object.user.id
  end

  def sparks
    object.sparks.pluck(:id)
  end
end
