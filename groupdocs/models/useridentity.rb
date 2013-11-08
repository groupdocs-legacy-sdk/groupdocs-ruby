class UserIdentity
  attr_accessor :id, :guid, :primary_email

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :guid => :guid, :primary_email => :primary_email

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if UserIdentity.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserIdentity.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UserIdentity.attribute_map["primary_email".to_sym] != nil
        name = "primary_email".to_sym
        value = attributes["primary_email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    UserIdentity.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

