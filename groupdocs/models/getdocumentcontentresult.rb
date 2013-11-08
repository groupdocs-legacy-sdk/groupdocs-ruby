class GetDocumentContentResult
  attr_accessor :content

  # :internal => :external
  def self.attribute_map
  {
      :content => :content

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetDocumentContentResult.attribute_map["content".to_sym] != nil
        name = "content".to_sym
        value = attributes["content"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetDocumentContentResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

