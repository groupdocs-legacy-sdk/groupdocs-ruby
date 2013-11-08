class DocumentViewInfo
  attr_accessor :document, :short_url, :viewed_on

  # :internal => :external
  def self.attribute_map
  {
      :document => :document, :short_url => :short_url, :viewed_on => :viewed_on

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if DocumentViewInfo.attribute_map["document".to_sym] != nil
        name = "document".to_sym
        value = attributes["document"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentViewInfo.attribute_map["short_url".to_sym] != nil
        name = "short_url".to_sym
        value = attributes["short_url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentViewInfo.attribute_map["viewed_on".to_sym] != nil
        name = "viewed_on".to_sym
        value = attributes["viewed_on"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    DocumentViewInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

