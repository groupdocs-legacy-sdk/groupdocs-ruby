class GetCountriesResult
  attr_accessor :countries

  # :internal => :external
  def self.attribute_map
  {
      :countries => :countries

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetCountriesResult.attribute_map["countries".to_sym] != nil
        name = "countries".to_sym
        value = attributes["countries"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push Country.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetCountriesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

