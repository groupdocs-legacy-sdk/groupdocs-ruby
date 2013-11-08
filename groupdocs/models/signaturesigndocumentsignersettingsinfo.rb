class SignatureSignDocumentSignerSettingsInfo
  attr_accessor :name, :top, :left, :width, :height, :place_signature_on, :data, :fields

  # :internal => :external
  def self.attribute_map
  {
      :name => :name, :top => :top, :left => :left, :width => :width, :height => :height, :place_signature_on => :placeSignatureOn, :data => :data, :fields => :fields

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureSignDocumentSignerSettingsInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignDocumentSignerSettingsInfo.attribute_map["top".to_sym] != nil
        name = "top".to_sym
        value = attributes["top"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignDocumentSignerSettingsInfo.attribute_map["left".to_sym] != nil
        name = "left".to_sym
        value = attributes["left"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignDocumentSignerSettingsInfo.attribute_map["width".to_sym] != nil
        name = "width".to_sym
        value = attributes["width"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignDocumentSignerSettingsInfo.attribute_map["height".to_sym] != nil
        name = "height".to_sym
        value = attributes["height"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignDocumentSignerSettingsInfo.attribute_map["place_signature_on".to_sym] != nil
        name = "place_signature_on".to_sym
        value = attributes["placeSignatureOn"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignDocumentSignerSettingsInfo.attribute_map["data".to_sym] != nil
        name = "data".to_sym
        value = attributes["data"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignDocumentSignerSettingsInfo.attribute_map["fields".to_sym] != nil
        name = "fields".to_sym
        value = attributes["fields"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureFieldInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureSignDocumentSignerSettingsInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

