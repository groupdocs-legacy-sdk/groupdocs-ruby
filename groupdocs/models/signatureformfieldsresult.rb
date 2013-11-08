class SignatureFormFieldsResult
  attr_accessor :form_id, :fields

  # :internal => :external
  def self.attribute_map
  {
      :form_id => :formId, :fields => :fields

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormFieldsResult.attribute_map["form_id".to_sym] != nil
        name = "form_id".to_sym
        value = attributes["formId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldsResult.attribute_map["fields".to_sym] != nil
        name = "fields".to_sym
        value = attributes["fields"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureFormFieldInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureFormFieldsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

