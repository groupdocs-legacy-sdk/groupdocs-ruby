class SignatureSignatureResult
  attr_accessor :signature

  # :internal => :external
  def self.attribute_map
  {
      :signature => :signature

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureSignatureResult.attribute_map["signature".to_sym] != nil
        name = "signature".to_sym
        value = attributes["signature"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureSignatureResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

