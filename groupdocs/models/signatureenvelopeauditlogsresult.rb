class SignatureEnvelopeAuditLogsResult
  attr_accessor :envelope_id, :logs

  # :internal => :external
  def self.attribute_map
  {
      :envelope_id => :envelopeId, :logs => :logs

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopeAuditLogsResult.attribute_map["envelope_id".to_sym] != nil
        name = "envelope_id".to_sym
        value = attributes["envelopeId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeAuditLogsResult.attribute_map["logs".to_sym] != nil
        name = "logs".to_sym
        value = attributes["logs"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureEnvelopeAuditLogInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopeAuditLogsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

