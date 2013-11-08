class SetAnnotationAccessResult
  attr_accessor :annotation

  # :internal => :external
  def self.attribute_map
  {
      :annotation => :annotation

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SetAnnotationAccessResult.attribute_map["annotation".to_sym] != nil
        name = "annotation".to_sym
        value = attributes["annotation"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SetAnnotationAccessResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

