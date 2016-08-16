#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :sponsor, :influencer

  def influencer
  object.influencer.id
  end

end
