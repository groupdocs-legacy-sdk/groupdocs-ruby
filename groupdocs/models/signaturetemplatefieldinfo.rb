class SignatureTemplateFieldInfo
  attr_accessor :id, :template_id, :recipient_id, :name, :mandatory, :order, :regular_expression, :signature_field_id, :locations, :field_type, :acceptable_values, :default_value, :tooltip, :guidance_text

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :template_id => :templateId, :recipient_id => :recipientId, :name => :name, :mandatory => :mandatory, :order => :order, :regular_expression => :regularExpression, :signature_field_id => :signatureFieldId, :locations => :locations, :field_type => :fieldType, :acceptable_values => :acceptableValues, :default_value => :defaultValue, :tooltip => :tooltip, :guidance_text => :guidanceText

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateFieldInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["template_id".to_sym] != nil
        name = "template_id".to_sym
        value = attributes["templateId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["recipient_id".to_sym] != nil
        name = "recipient_id".to_sym
        value = attributes["recipientId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["mandatory".to_sym] != nil
        name = "mandatory".to_sym
        value = attributes["mandatory"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["order".to_sym] != nil
        name = "order".to_sym
        value = attributes["order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["regular_expression".to_sym] != nil
        name = "regular_expression".to_sym
        value = attributes["regularExpression"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["signature_field_id".to_sym] != nil
        name = "signature_field_id".to_sym
        value = attributes["signatureFieldId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["locations".to_sym] != nil
        name = "locations".to_sym
        value = attributes["locations"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureTemplateFieldLocationInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureTemplateFieldInfo.attribute_map["field_type".to_sym] != nil
        name = "field_type".to_sym
        value = attributes["fieldType"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["acceptable_values".to_sym] != nil
        name = "acceptable_values".to_sym
        value = attributes["acceptableValues"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["default_value".to_sym] != nil
        name = "default_value".to_sym
        value = attributes["defaultValue"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["tooltip".to_sym] != nil
        name = "tooltip".to_sym
        value = attributes["tooltip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateFieldInfo.attribute_map["guidance_text".to_sym] != nil
        name = "guidance_text".to_sym
        value = attributes["guidanceText"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureTemplateFieldInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

