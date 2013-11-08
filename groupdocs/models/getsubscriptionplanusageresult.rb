class GetSubscriptionPlanUsageResult
  attr_accessor :subscription_plan, :usage, :last_reset_date

  # :internal => :external
  def self.attribute_map
  {
      :subscription_plan => :subscription_plan, :usage => :usage, :last_reset_date => :last_reset_date

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetSubscriptionPlanUsageResult.attribute_map["subscription_plan".to_sym] != nil
        name = "subscription_plan".to_sym
        value = attributes["subscription_plan"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetSubscriptionPlanUsageResult.attribute_map["usage".to_sym] != nil
        name = "usage".to_sym
        value = attributes["usage"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetSubscriptionPlanUsageResult.attribute_map["last_reset_date".to_sym] != nil
        name = "last_reset_date".to_sym
        value = attributes["last_reset_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetSubscriptionPlanUsageResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

