class SignatureSignaturesResult
  attr_accessor :count, :signatures

  # :internal => :external
  def self.attribute_map
  {
      :count => :count, :signatures => :signatures

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureSignaturesResult.attribute_map["count".to_sym] != nil
        name = "count".to_sym
        value = attributes["count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignaturesResult.attribute_map["signatures".to_sym] != nil
        name = "signatures".to_sym
        value = attributes["signatures"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureSignatureInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureSignaturesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

