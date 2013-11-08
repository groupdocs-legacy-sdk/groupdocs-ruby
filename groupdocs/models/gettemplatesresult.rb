class GetTemplatesResult
  attr_accessor :templates

  # :internal => :external
  def self.attribute_map
  {
      :templates => :templates

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetTemplatesResult.attribute_map["templates".to_sym] != nil
        name = "templates".to_sym
        value = attributes["templates"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push TemplateInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetTemplatesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

