#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :sponsor, :influencer
end
