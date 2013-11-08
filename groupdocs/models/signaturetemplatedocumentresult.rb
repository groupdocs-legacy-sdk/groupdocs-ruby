class SignatureTemplateDocumentResult
  attr_accessor :template_id, :document

  # :internal => :external
  def self.attribute_map
  {
      :template_id => :templateId, :document => :document

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateDocumentResult.attribute_map["template_id".to_sym] != nil
        name = "template_id".to_sym
        value = attributes["templateId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateDocumentResult.attribute_map["document".to_sym] != nil
        name = "document".to_sym
        value = attributes["document"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureTemplateDocumentResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

