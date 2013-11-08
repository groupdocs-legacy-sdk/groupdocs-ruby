class BillingAddressInfo
  attr_accessor :address1, :address2, :city, :company, :country, :email, :fax, :first_name, :last_name, :phone, :state, :zip

  # :internal => :external
  def self.attribute_map
  {
      :address1 => :address1, :address2 => :address2, :city => :city, :company => :company, :country => :country, :email => :email, :fax => :fax, :first_name => :firstName, :last_name => :lastName, :phone => :phone, :state => :state, :zip => :zip

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if BillingAddressInfo.attribute_map["address1".to_sym] != nil
        name = "address1".to_sym
        value = attributes["address1"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if BillingAddressInfo.attribute_map["address2".to_sym] != nil
        name = "address2".to_sym
        value = attributes["address2"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if BillingAddressInfo.attribute_map["city".to_sym] != nil
        name = "city".to_sym
        value = attributes["city"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if BillingAddressInfo.attribute_map["company".to_sym] != nil
        name = "company".to_sym
        value = attributes["company"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if BillingAddressInfo.attribute_map["country".to_sym] != nil
        name = "country".to_sym
        value = attributes["country"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if BillingAddressInfo.attribute_map["email".to_sym] != nil
        name = "email".to_sym
        value = attributes["email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if BillingAddressInfo.attribute_map["fax".to_sym] != nil
        name = "fax".to_sym
        value = attributes["fax"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if BillingAddressInfo.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["firstName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if BillingAddressInfo.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["lastName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if BillingAddressInfo.attribute_map["phone".to_sym] != nil
        name = "phone".to_sym
        value = attributes["phone"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if BillingAddressInfo.attribute_map["state".to_sym] != nil
        name = "state".to_sym
        value = attributes["state"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if BillingAddressInfo.attribute_map["zip".to_sym] != nil
        name = "zip".to_sym
        value = attributes["zip"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    BillingAddressInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

