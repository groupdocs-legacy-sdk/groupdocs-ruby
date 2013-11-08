class ReviewerInfo
  attr_accessor :id, :guid, :primary_email, :first_name, :last_name, :access_rights, :color, :custom_email_message

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :guid => :guid, :primary_email => :primary_email, :first_name => :firstName, :last_name => :lastName, :access_rights => :access_rights, :color => :color, :custom_email_message => :customEmailMessage

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ReviewerInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReviewerInfo.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReviewerInfo.attribute_map["primary_email".to_sym] != nil
        name = "primary_email".to_sym
        value = attributes["primary_email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReviewerInfo.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["firstName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReviewerInfo.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["lastName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReviewerInfo.attribute_map["access_rights".to_sym] != nil
        name = "access_rights".to_sym
        value = attributes["access_rights"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReviewerInfo.attribute_map["color".to_sym] != nil
        name = "color".to_sym
        value = attributes["color"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReviewerInfo.attribute_map["custom_email_message".to_sym] != nil
        name = "custom_email_message".to_sym
        value = attributes["customEmailMessage"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ReviewerInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

