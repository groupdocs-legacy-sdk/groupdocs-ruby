class SignatureContactResult
  attr_accessor :contact

  # :internal => :external
  def self.attribute_map
  {
      :contact => :contact

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureContactResult.attribute_map["contact".to_sym] != nil
        name = "contact".to_sym
        value = attributes["contact"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureContactResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

