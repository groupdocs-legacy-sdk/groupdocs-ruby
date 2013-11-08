class SignatureContactInfo
  attr_accessor :id, :first_name, :last_name, :email, :provider

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :first_name => :firstName, :last_name => :lastName, :email => :email, :provider => :provider

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureContactInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureContactInfo.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["firstName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureContactInfo.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["lastName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureContactInfo.attribute_map["email".to_sym] != nil
        name = "email".to_sym
        value = attributes["email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureContactInfo.attribute_map["provider".to_sym] != nil
        name = "provider".to_sym
        value = attributes["provider"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureContactInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

