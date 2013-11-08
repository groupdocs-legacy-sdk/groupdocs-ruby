class UserPasswordInfo
  attr_accessor :old_pswd_salt, :new_pswd_salt, :reset_token

  # :internal => :external
  def self.attribute_map
  {
      :old_pswd_salt => :old_pswd_salt, :new_pswd_salt => :new_pswd_salt, :reset_token => :reset_token

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if UserPasswordInfo.attribute_map["old_pswd_salt".to_sym] != nil
        name = "old_pswd_salt".to_sym
        value = attributes["old_pswd_salt"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserPasswordInfo.attribute_map["new_pswd_salt".to_sym] != nil
        name = "new_pswd_salt".to_sym
        value = attributes["new_pswd_salt"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserPasswordInfo.attribute_map["reset_token".to_sym] != nil
        name = "reset_token".to_sym
        value = attributes["reset_token"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    UserPasswordInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

