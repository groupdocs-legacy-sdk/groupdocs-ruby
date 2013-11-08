class ResetPasswordResult
  attr_accessor :user_name

  # :internal => :external
  def self.attribute_map
  {
      :user_name => :user_name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ResetPasswordResult.attribute_map["user_name".to_sym] != nil
        name = "user_name".to_sym
        value = attributes["user_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ResetPasswordResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

