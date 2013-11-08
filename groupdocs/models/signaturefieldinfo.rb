class SignatureFieldInfo
  attr_accessor :id, :name, :graph_size_w, :graph_size_h, :get_data_from, :regular_expression, :font_name, :font_color, :font_size, :font_bold, :font_italic, :font_underline, :is_system, :field_type, :acceptable_values, :default_value, :align, :min_graph_size_w, :min_graph_size_h

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :name => :name, :graph_size_w => :graphSizeW, :graph_size_h => :graphSizeH, :get_data_from => :getDataFrom, :regular_expression => :regularExpression, :font_name => :fontName, :font_color => :fontColor, :font_size => :fontSize, :font_bold => :fontBold, :font_italic => :fontItalic, :font_underline => :fontUnderline, :is_system => :isSystem, :field_type => :fieldType, :acceptable_values => :acceptableValues, :default_value => :defaultValue, :align => :align, :min_graph_size_w => :minGraphSizeW, :min_graph_size_h => :minGraphSizeH

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFieldInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["graph_size_w".to_sym] != nil
        name = "graph_size_w".to_sym
        value = attributes["graphSizeW"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["graph_size_h".to_sym] != nil
        name = "graph_size_h".to_sym
        value = attributes["graphSizeH"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["get_data_from".to_sym] != nil
        name = "get_data_from".to_sym
        value = attributes["getDataFrom"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["regular_expression".to_sym] != nil
        name = "regular_expression".to_sym
        value = attributes["regularExpression"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["font_name".to_sym] != nil
        name = "font_name".to_sym
        value = attributes["fontName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["font_color".to_sym] != nil
        name = "font_color".to_sym
        value = attributes["fontColor"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["font_size".to_sym] != nil
        name = "font_size".to_sym
        value = attributes["fontSize"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["font_bold".to_sym] != nil
        name = "font_bold".to_sym
        value = attributes["fontBold"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["font_italic".to_sym] != nil
        name = "font_italic".to_sym
        value = attributes["fontItalic"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["font_underline".to_sym] != nil
        name = "font_underline".to_sym
        value = attributes["fontUnderline"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["is_system".to_sym] != nil
        name = "is_system".to_sym
        value = attributes["isSystem"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["field_type".to_sym] != nil
        name = "field_type".to_sym
        value = attributes["fieldType"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["acceptable_values".to_sym] != nil
        name = "acceptable_values".to_sym
        value = attributes["acceptableValues"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["default_value".to_sym] != nil
        name = "default_value".to_sym
        value = attributes["defaultValue"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["align".to_sym] != nil
        name = "align".to_sym
        value = attributes["align"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["min_graph_size_w".to_sym] != nil
        name = "min_graph_size_w".to_sym
        value = attributes["minGraphSizeW"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldInfo.attribute_map["min_graph_size_h".to_sym] != nil
        name = "min_graph_size_h".to_sym
        value = attributes["minGraphSizeH"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFieldInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

