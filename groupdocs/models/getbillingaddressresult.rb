class GetBillingAddressResult
  attr_accessor :billing_address

  # :internal => :external
  def self.attribute_map
  {
      :billing_address => :billing_address

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetBillingAddressResult.attribute_map["billing_address".to_sym] != nil
        name = "billing_address".to_sym
        value = attributes["billing_address"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetBillingAddressResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

