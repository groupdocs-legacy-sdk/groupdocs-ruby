class SignatureEnvelopeDocumentResult
  attr_accessor :envelope_id, :document

  # :internal => :external
  def self.attribute_map
  {
      :envelope_id => :envelopeId, :document => :document

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopeDocumentResult.attribute_map["envelope_id".to_sym] != nil
        name = "envelope_id".to_sym
        value = attributes["envelopeId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeDocumentResult.attribute_map["document".to_sym] != nil
        name = "document".to_sym
        value = attributes["document"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopeDocumentResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

