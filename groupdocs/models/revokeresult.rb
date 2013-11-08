class RevokeResult
  attr_accessor :user_guid, :user_privatekey

  # :internal => :external
  def self.attribute_map
  {
      :user_guid => :user_guid, :user_privatekey => :user_privatekey

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if RevokeResult.attribute_map["user_guid".to_sym] != nil
        name = "user_guid".to_sym
        value = attributes["user_guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if RevokeResult.attribute_map["user_privatekey".to_sym] != nil
        name = "user_privatekey".to_sym
        value = attributes["user_privatekey"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    RevokeResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

