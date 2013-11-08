class GetStatesResult
  attr_accessor :states

  # :internal => :external
  def self.attribute_map
  {
      :states => :states

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetStatesResult.attribute_map["states".to_sym] != nil
        name = "states".to_sym
        value = attributes["states"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push State.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetStatesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

