class SignatureDocumentFieldsResult
  attr_accessor :document_id, :fields

  # :internal => :external
  def self.attribute_map
  {
      :document_id => :documentId, :fields => :fields

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureDocumentFieldsResult.attribute_map["document_id".to_sym] != nil
        name = "document_id".to_sym
        value = attributes["documentId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureDocumentFieldsResult.attribute_map["fields".to_sym] != nil
        name = "fields".to_sym
        value = attributes["fields"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureDocumentFieldInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureDocumentFieldsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

