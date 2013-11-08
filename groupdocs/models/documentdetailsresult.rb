class DocumentDetailsResult
  attr_accessor :guid, :name, :supported

  # :internal => :external
  def self.attribute_map
  {
      :guid => :guid, :name => :name, :supported => :supported

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if DocumentDetailsResult.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentDetailsResult.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentDetailsResult.attribute_map["supported".to_sym] != nil
        name = "supported".to_sym
        value = attributes["supported"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    DocumentDetailsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

