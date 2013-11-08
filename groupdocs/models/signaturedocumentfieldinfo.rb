class SignatureDocumentFieldInfo
  attr_accessor :id, :name, :mandatory, :signature_field_id, :locations, :field_type, :acceptable_values, :default_value, :tooltip

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :name => :name, :mandatory => :mandatory, :signature_field_id => :signatureFieldId, :locations => :locations, :field_type => :fieldType, :acceptable_values => :acceptableValues, :default_value => :defaultValue, :tooltip => :tooltip

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureDocumentFieldInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureDocumentFieldInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureDocumentFieldInfo.attribute_map["mandatory".to_sym] != nil
        name = "mandatory".to_sym
        value = attributes["mandatory"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureDocumentFieldInfo.attribute_map["signature_field_id".to_sym] != nil
        name = "signature_field_id".to_sym
        value = attributes["signatureFieldId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureDocumentFieldInfo.attribute_map["locations".to_sym] != nil
        name = "locations".to_sym
        value = attributes["locations"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureDocumentFieldLocationInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureDocumentFieldInfo.attribute_map["field_type".to_sym] != nil
        name = "field_type".to_sym
        value = attributes["fieldType"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureDocumentFieldInfo.attribute_map["acceptable_values".to_sym] != nil
        name = "acceptable_values".to_sym
        value = attributes["acceptableValues"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureDocumentFieldInfo.attribute_map["default_value".to_sym] != nil
        name = "default_value".to_sym
        value = attributes["defaultValue"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureDocumentFieldInfo.attribute_map["tooltip".to_sym] != nil
        name = "tooltip".to_sym
        value = attributes["tooltip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureDocumentFieldInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

