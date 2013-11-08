class SignatureFormFieldLocationSettingsInfo
  attr_accessor :page, :location_x, :location_y, :location_width, :location_height, :font_name, :font_color, :font_size, :font_bold, :font_italic, :font_underline, :force_new_field, :align

  # :internal => :external
  def self.attribute_map
  {
      :page => :page, :location_x => :locationX, :location_y => :locationY, :location_width => :locationWidth, :location_height => :locationHeight, :font_name => :fontName, :font_color => :fontColor, :font_size => :fontSize, :font_bold => :fontBold, :font_italic => :fontItalic, :font_underline => :fontUnderline, :force_new_field => :forceNewField, :align => :align

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormFieldLocationSettingsInfo.attribute_map["page".to_sym] != nil
        name = "page".to_sym
        value = attributes["page"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["location_x".to_sym] != nil
        name = "location_x".to_sym
        value = attributes["locationX"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["location_y".to_sym] != nil
        name = "location_y".to_sym
        value = attributes["locationY"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["location_width".to_sym] != nil
        name = "location_width".to_sym
        value = attributes["locationWidth"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["location_height".to_sym] != nil
        name = "location_height".to_sym
        value = attributes["locationHeight"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["font_name".to_sym] != nil
        name = "font_name".to_sym
        value = attributes["fontName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["font_color".to_sym] != nil
        name = "font_color".to_sym
        value = attributes["fontColor"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["font_size".to_sym] != nil
        name = "font_size".to_sym
        value = attributes["fontSize"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["font_bold".to_sym] != nil
        name = "font_bold".to_sym
        value = attributes["fontBold"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["font_italic".to_sym] != nil
        name = "font_italic".to_sym
        value = attributes["fontItalic"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["font_underline".to_sym] != nil
        name = "font_underline".to_sym
        value = attributes["fontUnderline"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["force_new_field".to_sym] != nil
        name = "force_new_field".to_sym
        value = attributes["forceNewField"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldLocationSettingsInfo.attribute_map["align".to_sym] != nil
        name = "align".to_sym
        value = attributes["align"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFormFieldLocationSettingsInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

