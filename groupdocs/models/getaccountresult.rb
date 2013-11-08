class GetAccountResult
  attr_accessor :max_users, :users

  # :internal => :external
  def self.attribute_map
  {
      :max_users => :max_users, :users => :users

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetAccountResult.attribute_map["max_users".to_sym] != nil
        name = "max_users".to_sym
        value = attributes["max_users"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetAccountResult.attribute_map["users".to_sym] != nil
        name = "users".to_sym
        value = attributes["users"]
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
    GetAccountResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

