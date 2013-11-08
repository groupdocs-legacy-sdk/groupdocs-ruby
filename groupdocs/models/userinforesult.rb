class UserInfoResult
  attr_accessor :user

  # :internal => :external
  def self.attribute_map
  {
      :user => :user

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if UserInfoResult.attribute_map["user".to_sym] != nil
        name = "user".to_sym
        value = attributes["user"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    UserInfoResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

