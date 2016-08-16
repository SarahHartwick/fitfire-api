class TaggingSerializer < ActiveModel::Serializer
  attributes :id, :spark, :tag
  def spark
    object.spark.id
  end
  def tag
    object.tag.id
  end

end
