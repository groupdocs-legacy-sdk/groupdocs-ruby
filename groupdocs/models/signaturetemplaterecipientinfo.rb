class SignatureTemplateRecipientInfo
  attr_accessor :id, :nickname, :order, :role_id

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :nickname => :nickname, :order => :order, :role_id => :roleId

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateRecipientInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateRecipientInfo.attribute_map["nickname".to_sym] != nil
        name = "nickname".to_sym
        value = attributes["nickname"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateRecipientInfo.attribute_map["order".to_sym] != nil
        name = "order".to_sym
        value = attributes["order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateRecipientInfo.attribute_map["role_id".to_sym] != nil
        name = "role_id".to_sym
        value = attributes["roleId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureTemplateRecipientInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

