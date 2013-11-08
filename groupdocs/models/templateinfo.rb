class TemplateInfo
  attr_accessor :name, :field_count, :size, :upload_time, :id, :guid

  # :internal => :external
  def self.attribute_map
  {
      :name => :name, :field_count => :field_count, :size => :size, :upload_time => :upload_time, :id => :id, :guid => :guid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if TemplateInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TemplateInfo.attribute_map["field_count".to_sym] != nil
        name = "field_count".to_sym
        value = attributes["field_count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TemplateInfo.attribute_map["size".to_sym] != nil
        name = "size".to_sym
        value = attributes["size"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TemplateInfo.attribute_map["upload_time".to_sym] != nil
        name = "upload_time".to_sym
        value = attributes["upload_time"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TemplateInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TemplateInfo.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    TemplateInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

