class SignatureVerifyDocumentResult
  attr_accessor :authentic, :dates_signed, :references, :recipients

  # :internal => :external
  def self.attribute_map
  {
      :authentic => :authentic, :dates_signed => :datesSigned, :references => :references, :recipients => :recipients

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureVerifyDocumentResult.attribute_map["authentic".to_sym] != nil
        name = "authentic".to_sym
        value = attributes["authentic"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureVerifyDocumentResult.attribute_map["dates_signed".to_sym] != nil
        name = "dates_signed".to_sym
        value = attributes["datesSigned"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureVerifyDocumentResult.attribute_map["references".to_sym] != nil
        name = "references".to_sym
        value = attributes["references"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureVerifyDocumentResult.attribute_map["recipients".to_sym] != nil
        name = "recipients".to_sym
        value = attributes["recipients"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureEnvelopeRecipientInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureVerifyDocumentResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

