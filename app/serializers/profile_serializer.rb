#
class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :photo, :description, :tags, :user

  def user
  object.user.id
  end

end
