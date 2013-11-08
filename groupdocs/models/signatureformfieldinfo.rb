class SignatureFormFieldInfo
  attr_accessor :id, :form_guid, :participant_guid, :name, :mandatory, :regular_expression, :data, :fill_time_stamp, :locations, :field_type, :acceptable_values, :default_value, :tooltip, :guidance_text

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :form_guid => :formGuid, :participant_guid => :participantGuid, :name => :name, :mandatory => :mandatory, :regular_expression => :regularExpression, :data => :data, :fill_time_stamp => :fillTimeStamp, :locations => :locations, :field_type => :fieldType, :acceptable_values => :acceptableValues, :default_value => :defaultValue, :tooltip => :tooltip, :guidance_text => :guidanceText

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormFieldInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldInfo.attribute_map["form_guid".to_sym] != nil
        name = "form_guid".to_sym
        value = attributes["formGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldInfo.attribute_map["participant_guid".to_sym] != nil
        name = "participant_guid".to_sym
        value = attributes["participantGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldInfo.attribute_map["mandatory".to_sym] != nil
        name = "mandatory".to_sym
        value = attributes["mandatory"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldInfo.attribute_map["regular_expression".to_sym] != nil
        name = "regular_expression".to_sym
        value = attributes["regularExpression"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldInfo.attribute_map["data".to_sym] != nil
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
      if SignatureFormFieldInfo.attribute_map["fill_time_stamp".to_sym] != nil
        name = "fill_time_stamp".to_sym
        value = attributes["fillTimeStamp"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldInfo.attribute_map["locations".to_sym] != nil
        name = "locations".to_sym
        value = attributes["locations"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureFormFieldLocationInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureFormFieldInfo.attribute_map["field_type".to_sym] != nil
        name = "field_type".to_sym
        value = attributes["fieldType"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldInfo.attribute_map["acceptable_values".to_sym] != nil
        name = "acceptable_values".to_sym
        value = attributes["acceptableValues"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldInfo.attribute_map["default_value".to_sym] != nil
        name = "default_value".to_sym
        value = attributes["defaultValue"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldInfo.attribute_map["tooltip".to_sym] != nil
        name = "tooltip".to_sym
        value = attributes["tooltip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldInfo.attribute_map["guidance_text".to_sym] != nil
        name = "guidance_text".to_sym
        value = attributes["guidanceText"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFormFieldInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

