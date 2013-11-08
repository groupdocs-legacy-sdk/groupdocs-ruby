class SignatureEnvelopeResult
  attr_accessor :envelope

  # :internal => :external
  def self.attribute_map
  {
      :envelope => :envelope

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopeResult.attribute_map["envelope".to_sym] != nil
        name = "envelope".to_sym
        value = attributes["envelope"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopeResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

