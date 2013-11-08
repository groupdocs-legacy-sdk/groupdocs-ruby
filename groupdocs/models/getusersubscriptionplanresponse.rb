class GetUserSubscriptionPlanResponse
  attr_accessor :result, :status, :error_message, :composed_on

  # :internal => :external
  def self.attribute_map
  {
      :result => :result, :status => :status, :error_message => :error_message, :composed_on => :composedOn

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetUserSubscriptionPlanResponse.attribute_map["result".to_sym] != nil
        name = "result".to_sym
        value = attributes["result"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetUserSubscriptionPlanResponse.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetUserSubscriptionPlanResponse.attribute_map["error_message".to_sym] != nil
        name = "error_message".to_sym
        value = attributes["error_message"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetUserSubscriptionPlanResponse.attribute_map["composed_on".to_sym] != nil
        name = "composed_on".to_sym
        value = attributes["composedOn"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetUserSubscriptionPlanResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

