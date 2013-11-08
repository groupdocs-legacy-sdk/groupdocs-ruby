class GetJobResourcesResult
  attr_accessor :dates

  # :internal => :external
  def self.attribute_map
  {
      :dates => :dates

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetJobResourcesResult.attribute_map["dates".to_sym] != nil
        name = "dates".to_sym
        value = attributes["dates"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetJobResourcesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

