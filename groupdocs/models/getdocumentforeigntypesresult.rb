class GetDocumentForeignTypesResult
  attr_accessor :types

  # :internal => :external
  def self.attribute_map
  {
      :types => :types

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetDocumentForeignTypesResult.attribute_map["types".to_sym] != nil
        name = "types".to_sym
        value = attributes["types"]
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
    GetDocumentForeignTypesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

