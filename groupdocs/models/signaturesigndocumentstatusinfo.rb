class SignatureSignDocumentStatusInfo
  attr_accessor :document_id, :status

  # :internal => :external
  def self.attribute_map
  {
      :document_id => :documentId, :status => :status

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureSignDocumentStatusInfo.attribute_map["document_id".to_sym] != nil
        name = "document_id".to_sym
        value = attributes["documentId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignDocumentStatusInfo.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureSignDocumentStatusInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

