class SignatureFieldSettingsInfo
  attr_accessor :name, :graph_size_w, :graph_size_h, :get_data_from, :regular_expression

  # :internal => :external
  def self.attribute_map
  {
      :name => :name, :graph_size_w => :graphSizeW, :graph_size_h => :graphSizeH, :get_data_from => :getDataFrom, :regular_expression => :regularExpression

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFieldSettingsInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldSettingsInfo.attribute_map["graph_size_w".to_sym] != nil
        name = "graph_size_w".to_sym
        value = attributes["graphSizeW"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldSettingsInfo.attribute_map["graph_size_h".to_sym] != nil
        name = "graph_size_h".to_sym
        value = attributes["graphSizeH"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldSettingsInfo.attribute_map["get_data_from".to_sym] != nil
        name = "get_data_from".to_sym
        value = attributes["getDataFrom"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFieldSettingsInfo.attribute_map["regular_expression".to_sym] != nil
        name = "regular_expression".to_sym
        value = attributes["regularExpression"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFieldSettingsInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

