class SignaturePredefinedListsResult
  attr_accessor :lists

  # :internal => :external
  def self.attribute_map
  {
      :lists => :lists

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignaturePredefinedListsResult.attribute_map["lists".to_sym] != nil
        name = "lists".to_sym
        value = attributes["lists"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignaturePredefinedListInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignaturePredefinedListsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

