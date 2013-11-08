class GetTermSuggestionsResult
  attr_accessor :suggestions

  # :internal => :external
  def self.attribute_map
  {
      :suggestions => :suggestions

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetTermSuggestionsResult.attribute_map["suggestions".to_sym] != nil
        name = "suggestions".to_sym
        value = attributes["suggestions"]
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
    GetTermSuggestionsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

