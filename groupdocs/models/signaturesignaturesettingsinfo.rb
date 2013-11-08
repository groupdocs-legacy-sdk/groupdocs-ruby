class SignatureSignatureSettingsInfo
  attr_accessor :name, :company_name, :position, :first_name, :last_name, :text_initials, :signature_data, :initials_data

  # :internal => :external
  def self.attribute_map
  {
      :name => :name, :company_name => :companyName, :position => :position, :first_name => :firstName, :last_name => :lastName, :text_initials => :textInitials, :signature_data => :signatureData, :initials_data => :initialsData

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureSignatureSettingsInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureSettingsInfo.attribute_map["company_name".to_sym] != nil
        name = "company_name".to_sym
        value = attributes["companyName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureSettingsInfo.attribute_map["position".to_sym] != nil
        name = "position".to_sym
        value = attributes["position"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureSettingsInfo.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["firstName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureSettingsInfo.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["lastName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureSettingsInfo.attribute_map["text_initials".to_sym] != nil
        name = "text_initials".to_sym
        value = attributes["textInitials"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureSettingsInfo.attribute_map["signature_data".to_sym] != nil
        name = "signature_data".to_sym
        value = attributes["signatureData"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureSettingsInfo.attribute_map["initials_data".to_sym] != nil
        name = "initials_data".to_sym
        value = attributes["initialsData"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureSignatureSettingsInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

