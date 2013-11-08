class SignatureEnvelopeRecipientResult
  attr_accessor :envelope_id, :recipient

  # :internal => :external
  def self.attribute_map
  {
      :envelope_id => :envelopeId, :recipient => :recipient

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopeRecipientResult.attribute_map["envelope_id".to_sym] != nil
        name = "envelope_id".to_sym
        value = attributes["envelopeId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientResult.attribute_map["recipient".to_sym] != nil
        name = "recipient".to_sym
        value = attributes["recipient"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopeRecipientResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

