class UpdateSubscriptionPlanInfo
  attr_accessor :user_count, :promo_code

  # :internal => :external
  def self.attribute_map
  {
      :user_count => :userCount, :promo_code => :promoCode

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if UpdateSubscriptionPlanInfo.attribute_map["user_count".to_sym] != nil
        name = "user_count".to_sym
        value = attributes["userCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UpdateSubscriptionPlanInfo.attribute_map["promo_code".to_sym] != nil
        name = "promo_code".to_sym
        value = attributes["promoCode"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    UpdateSubscriptionPlanInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

