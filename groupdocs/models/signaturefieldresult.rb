class SignatureFieldResult
  attr_accessor :field

  # :internal => :external
  def self.attribute_map
  {
      :field => :field

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFieldResult.attribute_map["field".to_sym] != nil
        name = "field".to_sym
        value = attributes["field"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFieldResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

