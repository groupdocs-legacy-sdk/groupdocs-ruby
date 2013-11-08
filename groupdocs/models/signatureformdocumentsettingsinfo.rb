class SignatureFormDocumentSettingsInfo
  attr_accessor :_order, :new_document_guid

  # :internal => :external
  def self.attribute_map
  {
      :_order => :Order, :new_document_guid => :newDocumentGuid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormDocumentSettingsInfo.attribute_map["_order".to_sym] != nil
        name = "_order".to_sym
        value = attributes["Order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormDocumentSettingsInfo.attribute_map["new_document_guid".to_sym] != nil
        name = "new_document_guid".to_sym
        value = attributes["newDocumentGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFormDocumentSettingsInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

