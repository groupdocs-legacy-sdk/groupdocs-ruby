class SignatureEnvelopesResult
  attr_accessor :envelopes_count, :envelopes

  # :internal => :external
  def self.attribute_map
  {
      :envelopes_count => :envelopesCount, :envelopes => :envelopes

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopesResult.attribute_map["envelopes_count".to_sym] != nil
        name = "envelopes_count".to_sym
        value = attributes["envelopesCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopesResult.attribute_map["envelopes".to_sym] != nil
        name = "envelopes".to_sym
        value = attributes["envelopes"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureEnvelopeInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

