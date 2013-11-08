class GetImageUrlsResult
  attr_accessor :url

  # :internal => :external
  def self.attribute_map
  {
      :url => :url

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetImageUrlsResult.attribute_map["url".to_sym] != nil
        name = "url".to_sym
        value = attributes["url"]
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
    GetImageUrlsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

