class ReviewerContactInfo
  attr_accessor :email_address, :first_name, :last_name

  # :internal => :external
  def self.attribute_map
  {
      :email_address => :emailAddress, :first_name => :firstName, :last_name => :lastName

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ReviewerContactInfo.attribute_map["email_address".to_sym] != nil
        name = "email_address".to_sym
        value = attributes["emailAddress"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReviewerContactInfo.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["firstName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReviewerContactInfo.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["lastName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ReviewerContactInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

