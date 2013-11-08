class SignatureTemplateResult
  attr_accessor :template

  # :internal => :external
  def self.attribute_map
  {
      :template => :template

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateResult.attribute_map["template".to_sym] != nil
        name = "template".to_sym
        value = attributes["template"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureTemplateResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

