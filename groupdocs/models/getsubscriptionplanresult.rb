class GetSubscriptionPlanResult
  attr_accessor :metrics, :subscription

  # :internal => :external
  def self.attribute_map
  {
      :metrics => :metrics, :subscription => :subscription

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetSubscriptionPlanResult.attribute_map["metrics".to_sym] != nil
        name = "metrics".to_sym
        value = attributes["metrics"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ProductMetrics.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if GetSubscriptionPlanResult.attribute_map["subscription".to_sym] != nil
        name = "subscription".to_sym
        value = attributes["subscription"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetSubscriptionPlanResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

