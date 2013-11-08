class GetUserEmbedKeyResult
  attr_accessor :key

  # :internal => :external
  def self.attribute_map
  {
      :key => :key

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetUserEmbedKeyResult.attribute_map["key".to_sym] != nil
        name = "key".to_sym
        value = attributes["key"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetUserEmbedKeyResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

