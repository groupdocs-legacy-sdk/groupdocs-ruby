class GetStorageProvidersResult
  attr_accessor :providers

  # :internal => :external
  def self.attribute_map
  {
      :providers => :providers

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetStorageProvidersResult.attribute_map["providers".to_sym] != nil
        name = "providers".to_sym
        value = attributes["providers"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push StorageProviderInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetStorageProvidersResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

