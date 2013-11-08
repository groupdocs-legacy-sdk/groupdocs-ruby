class DatasourceField
  attr_accessor :name, :values, :content_type, :type, :nested_fields

  # :internal => :external
  def self.attribute_map
  {
      :name => :name, :values => :values, :content_type => :contentType, :type => :type, :nested_fields => :nested_fields

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if DatasourceField.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DatasourceField.attribute_map["values".to_sym] != nil
        name = "values".to_sym
        value = attributes["values"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if DatasourceField.attribute_map["content_type".to_sym] != nil
        name = "content_type".to_sym
        value = attributes["contentType"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DatasourceField.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DatasourceField.attribute_map["nested_fields".to_sym] != nil
        name = "nested_fields".to_sym
        value = attributes["nested_fields"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push DatasourceField.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    DatasourceField.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

