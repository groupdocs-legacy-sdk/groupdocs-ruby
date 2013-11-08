class SignatureSignDocumentDocumentSettingsInfo
  attr_accessor :name, :data

  # :internal => :external
  def self.attribute_map
  {
      :name => :name, :data => :data

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureSignDocumentDocumentSettingsInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignDocumentDocumentSettingsInfo.attribute_map["data".to_sym] != nil
        name = "data".to_sym
        value = attributes["data"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureSignDocumentDocumentSettingsInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

