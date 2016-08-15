#
class InfluencerSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :description, :facebook, :twitter,
   :instagram, :snapchat, :profession, :tags, :photo, :certifications, :user

  def user
  object.user.id
  end
end
