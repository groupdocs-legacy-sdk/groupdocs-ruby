class SignatureEnvelopeFieldInfo
  attr_accessor :id, :envelope_id, :recipient_id, :name, :mandatory, :order, :regular_expression, :get_data_from, :data, :fill_time_stamp, :signature_field_id, :locations, :field_type, :acceptable_values, :default_value, :tooltip, :guidance_text

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :envelope_id => :envelopeId, :recipient_id => :recipientId, :name => :name, :mandatory => :mandatory, :order => :order, :regular_expression => :regularExpression, :get_data_from => :getDataFrom, :data => :data, :fill_time_stamp => :fillTimeStamp, :signature_field_id => :signatureFieldId, :locations => :locations, :field_type => :fieldType, :acceptable_values => :acceptableValues, :default_value => :defaultValue, :tooltip => :tooltip, :guidance_text => :guidanceText

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopeFieldInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["envelope_id".to_sym] != nil
        name = "envelope_id".to_sym
        value = attributes["envelopeId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["recipient_id".to_sym] != nil
        name = "recipient_id".to_sym
        value = attributes["recipientId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["mandatory".to_sym] != nil
        name = "mandatory".to_sym
        value = attributes["mandatory"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["order".to_sym] != nil
        name = "order".to_sym
        value = attributes["order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["regular_expression".to_sym] != nil
        name = "regular_expression".to_sym
        value = attributes["regularExpression"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["get_data_from".to_sym] != nil
        name = "get_data_from".to_sym
        value = attributes["getDataFrom"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["data".to_sym] != nil
        name = "data".to_sym
        value = attributes["data"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureEnvelopeFieldInfo.attribute_map["fill_time_stamp".to_sym] != nil
        name = "fill_time_stamp".to_sym
        value = attributes["fillTimeStamp"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["signature_field_id".to_sym] != nil
        name = "signature_field_id".to_sym
        value = attributes["signatureFieldId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["locations".to_sym] != nil
        name = "locations".to_sym
        value = attributes["locations"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureEnvelopeFieldLocationInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureEnvelopeFieldInfo.attribute_map["field_type".to_sym] != nil
        name = "field_type".to_sym
        value = attributes["fieldType"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["acceptable_values".to_sym] != nil
        name = "acceptable_values".to_sym
        value = attributes["acceptableValues"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["default_value".to_sym] != nil
        name = "default_value".to_sym
        value = attributes["defaultValue"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["tooltip".to_sym] != nil
        name = "tooltip".to_sym
        value = attributes["tooltip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldInfo.attribute_map["guidance_text".to_sym] != nil
        name = "guidance_text".to_sym
        value = attributes["guidanceText"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopeFieldInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

