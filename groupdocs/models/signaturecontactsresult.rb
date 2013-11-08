class SignatureContactsResult
  attr_accessor :count, :contacts

  # :internal => :external
  def self.attribute_map
  {
      :count => :count, :contacts => :contacts

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureContactsResult.attribute_map["count".to_sym] != nil
        name = "count".to_sym
        value = attributes["count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureContactsResult.attribute_map["contacts".to_sym] != nil
        name = "contacts".to_sym
        value = attributes["contacts"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureContactInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureContactsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

