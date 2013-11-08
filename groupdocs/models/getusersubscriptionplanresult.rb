class GetUserSubscriptionPlanResult
  attr_accessor :id, :name, :billing_address

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :name => :name, :billing_address => :billing_address

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetUserSubscriptionPlanResult.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetUserSubscriptionPlanResult.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetUserSubscriptionPlanResult.attribute_map["billing_address".to_sym] != nil
        name = "billing_address".to_sym
        value = attributes["billing_address"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetUserSubscriptionPlanResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

