class SignatureTemplateFieldResult
  attr_accessor :template_id, :document_id, :recipient_id, :field

  # :internal => :external
  def self.attribute_map
  {
      :template_id => :templateId, :document_id => :documentId, :recipient_id => :recipientId, :field => :field

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateFieldResult.attribute_map["template_id".to_sym] != nil
        name = "template_id".to_sym
        value = attributes["templateId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldResult.attribute_map["document_id".to_sym] != nil
        name = "document_id".to_sym
        value = attributes["documentId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldResult.attribute_map["recipient_id".to_sym] != nil
        name = "recipient_id".to_sym
        value = attributes["recipientId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldResult.attribute_map["field".to_sym] != nil
        name = "field".to_sym
        value = attributes["field"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureTemplateFieldResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

