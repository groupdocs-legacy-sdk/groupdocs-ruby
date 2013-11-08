class SignatureTemplateRecipientResult
  attr_accessor :template_id, :recipient

  # :internal => :external
  def self.attribute_map
  {
      :template_id => :templateId, :recipient => :recipient

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateRecipientResult.attribute_map["template_id".to_sym] != nil
        name = "template_id".to_sym
        value = attributes["templateId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateRecipientResult.attribute_map["recipient".to_sym] != nil
        name = "recipient".to_sym
        value = attributes["recipient"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureTemplateRecipientResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

