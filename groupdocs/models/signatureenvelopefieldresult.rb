class SignatureEnvelopeFieldResult
  attr_accessor :envelope_id, :document_id, :recipient_id, :field

  # :internal => :external
  def self.attribute_map
  {
      :envelope_id => :envelopeId, :document_id => :documentId, :recipient_id => :recipientId, :field => :field

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopeFieldResult.attribute_map["envelope_id".to_sym] != nil
        name = "envelope_id".to_sym
        value = attributes["envelopeId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldResult.attribute_map["document_id".to_sym] != nil
        name = "document_id".to_sym
        value = attributes["documentId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldResult.attribute_map["recipient_id".to_sym] != nil
        name = "recipient_id".to_sym
        value = attributes["recipientId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeFieldResult.attribute_map["field".to_sym] != nil
        name = "field".to_sym
        value = attributes["field"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopeFieldResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

