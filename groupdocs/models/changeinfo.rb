class ChangeInfo
  attr_accessor :id, :type, :action, :page, :box, :text

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :type => :type, :action => :action, :page => :page, :box => :box, :text => :text

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ChangeInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ChangeInfo.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ChangeInfo.attribute_map["action".to_sym] != nil
        name = "action".to_sym
        value = attributes["action"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ChangeInfo.attribute_map["page".to_sym] != nil
        name = "page".to_sym
        value = attributes["page"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ChangeInfo.attribute_map["box".to_sym] != nil
        name = "box".to_sym
        value = attributes["box"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ChangeInfo.attribute_map["text".to_sym] != nil
        name = "text".to_sym
        value = attributes["text"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ChangeInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

