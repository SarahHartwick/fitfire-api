#
class SponsorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :photo, :website, :industry, :tags, :user

  def user
  object.user.id
  end
end
