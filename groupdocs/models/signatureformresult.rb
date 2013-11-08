class SignatureFormResult
  attr_accessor :form

  # :internal => :external
  def self.attribute_map
  {
      :form => :form

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormResult.attribute_map["form".to_sym] != nil
        name = "form".to_sym
        value = attributes["form"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFormResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

