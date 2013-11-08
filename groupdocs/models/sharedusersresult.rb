class SharedUsersResult
  attr_accessor :owner, :shared_users

  # :internal => :external
  def self.attribute_map
  {
      :owner => :owner, :shared_users => :shared_users

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SharedUsersResult.attribute_map["owner".to_sym] != nil
        name = "owner".to_sym
        value = attributes["owner"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SharedUsersResult.attribute_map["shared_users".to_sym] != nil
        name = "shared_users".to_sym
        value = attributes["shared_users"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push UserInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SharedUsersResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

