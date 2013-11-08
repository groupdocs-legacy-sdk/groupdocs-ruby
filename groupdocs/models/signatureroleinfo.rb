class SignatureRoleInfo
  attr_accessor :id, :name, :can_edit, :can_sign, :can_annotate, :can_delegate

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :name => :name, :can_edit => :canEdit, :can_sign => :canSign, :can_annotate => :canAnnotate, :can_delegate => :canDelegate

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureRoleInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureRoleInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureRoleInfo.attribute_map["can_edit".to_sym] != nil
        name = "can_edit".to_sym
        value = attributes["canEdit"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureRoleInfo.attribute_map["can_sign".to_sym] != nil
        name = "can_sign".to_sym
        value = attributes["canSign"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureRoleInfo.attribute_map["can_annotate".to_sym] != nil
        name = "can_annotate".to_sym
        value = attributes["canAnnotate"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureRoleInfo.attribute_map["can_delegate".to_sym] != nil
        name = "can_delegate".to_sym
        value = attributes["canDelegate"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureRoleInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

