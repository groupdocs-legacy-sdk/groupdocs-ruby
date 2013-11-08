class MoveAnnotationResult
  attr_accessor :annotation_guid

  # :internal => :external
  def self.attribute_map
  {
      :annotation_guid => :annotationGuid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if MoveAnnotationResult.attribute_map["annotation_guid".to_sym] != nil
        name = "annotation_guid".to_sym
        value = attributes["annotationGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    MoveAnnotationResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

