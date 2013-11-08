class SignatureTemplatesResult
  attr_accessor :templates_count, :templates

  # :internal => :external
  def self.attribute_map
  {
      :templates_count => :templatesCount, :templates => :templates

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplatesResult.attribute_map["templates_count".to_sym] != nil
        name = "templates_count".to_sym
        value = attributes["templatesCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplatesResult.attribute_map["templates".to_sym] != nil
        name = "templates".to_sym
        value = attributes["templates"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureTemplateInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureTemplatesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

