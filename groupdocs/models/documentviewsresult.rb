class DocumentViewsResult
  attr_accessor :views

  # :internal => :external
  def self.attribute_map
  {
      :views => :views

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if DocumentViewsResult.attribute_map["views".to_sym] != nil
        name = "views".to_sym
        value = attributes["views"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push DocumentViewInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    DocumentViewsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

