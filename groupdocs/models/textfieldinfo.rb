class TextFieldInfo
  attr_accessor :field_text, :font_family, :font_size

  # :internal => :external
  def self.attribute_map
  {
      :field_text => :fieldText, :font_family => :fontFamily, :font_size => :fontSize

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if TextFieldInfo.attribute_map["field_text".to_sym] != nil
        name = "field_text".to_sym
        value = attributes["fieldText"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TextFieldInfo.attribute_map["font_family".to_sym] != nil
        name = "font_family".to_sym
        value = attributes["fontFamily"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TextFieldInfo.attribute_map["font_size".to_sym] != nil
        name = "font_size".to_sym
        value = attributes["fontSize"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    TextFieldInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

