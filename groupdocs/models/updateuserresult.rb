class UpdateUserResult
  attr_accessor :user_guid

  # :internal => :external
  def self.attribute_map
  {
      :user_guid => :user_guid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if UpdateUserResult.attribute_map["user_guid".to_sym] != nil
        name = "user_guid".to_sym
        value = attributes["user_guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    UpdateUserResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

