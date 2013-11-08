class SubscriptionPlanInfo
  attr_accessor :product_id, :name, :user_count, :first_name_on_card, :last_name_on_card, :number, :expiration_date, :cvv, :address, :price, :currency_code, :billing_period, :promo_code, :next_assesment_date

  # :internal => :external
  def self.attribute_map
  {
      :product_id => :productId, :name => :name, :user_count => :userCount, :first_name_on_card => :firstNameOnCard, :last_name_on_card => :lastNameOnCard, :number => :number, :expiration_date => :expirationDate, :cvv => :cvv, :address => :address, :price => :price, :currency_code => :currencyCode, :billing_period => :billingPeriod, :promo_code => :promoCode, :next_assesment_date => :nextAssesmentDate

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SubscriptionPlanInfo.attribute_map["product_id".to_sym] != nil
        name = "product_id".to_sym
        value = attributes["productId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["user_count".to_sym] != nil
        name = "user_count".to_sym
        value = attributes["userCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["first_name_on_card".to_sym] != nil
        name = "first_name_on_card".to_sym
        value = attributes["firstNameOnCard"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["last_name_on_card".to_sym] != nil
        name = "last_name_on_card".to_sym
        value = attributes["lastNameOnCard"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["number".to_sym] != nil
        name = "number".to_sym
        value = attributes["number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["expiration_date".to_sym] != nil
        name = "expiration_date".to_sym
        value = attributes["expirationDate"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["cvv".to_sym] != nil
        name = "cvv".to_sym
        value = attributes["cvv"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["address".to_sym] != nil
        name = "address".to_sym
        value = attributes["address"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["price".to_sym] != nil
        name = "price".to_sym
        value = attributes["price"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["currency_code".to_sym] != nil
        name = "currency_code".to_sym
        value = attributes["currencyCode"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["billing_period".to_sym] != nil
        name = "billing_period".to_sym
        value = attributes["billingPeriod"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["promo_code".to_sym] != nil
        name = "promo_code".to_sym
        value = attributes["promoCode"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionPlanInfo.attribute_map["next_assesment_date".to_sym] != nil
        name = "next_assesment_date".to_sym
        value = attributes["nextAssesmentDate"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SubscriptionPlanInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

