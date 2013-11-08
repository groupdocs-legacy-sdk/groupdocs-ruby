class SignatureEnvelopeRecipientInfo
  attr_accessor :id, :first_name, :last_name, :email, :user_guid, :order, :role_id, :status, :status_message, :status_date_time, :delegated_recipient_id, :signature_fingerprint, :signature_host, :signature_location, :signature_browser, :embed_url

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :first_name => :firstName, :last_name => :lastName, :email => :email, :user_guid => :userGuid, :order => :order, :role_id => :roleId, :status => :status, :status_message => :statusMessage, :status_date_time => :statusDateTime, :delegated_recipient_id => :delegatedRecipientId, :signature_fingerprint => :signatureFingerprint, :signature_host => :signatureHost, :signature_location => :signatureLocation, :signature_browser => :signatureBrowser, :embed_url => :embedUrl

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopeRecipientInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["firstName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["lastName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["email".to_sym] != nil
        name = "email".to_sym
        value = attributes["email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["user_guid".to_sym] != nil
        name = "user_guid".to_sym
        value = attributes["userGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["order".to_sym] != nil
        name = "order".to_sym
        value = attributes["order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["role_id".to_sym] != nil
        name = "role_id".to_sym
        value = attributes["roleId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["status_message".to_sym] != nil
        name = "status_message".to_sym
        value = attributes["statusMessage"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["status_date_time".to_sym] != nil
        name = "status_date_time".to_sym
        value = attributes["statusDateTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["delegated_recipient_id".to_sym] != nil
        name = "delegated_recipient_id".to_sym
        value = attributes["delegatedRecipientId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["signature_fingerprint".to_sym] != nil
        name = "signature_fingerprint".to_sym
        value = attributes["signatureFingerprint"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["signature_host".to_sym] != nil
        name = "signature_host".to_sym
        value = attributes["signatureHost"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["signature_location".to_sym] != nil
        name = "signature_location".to_sym
        value = attributes["signatureLocation"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["signature_browser".to_sym] != nil
        name = "signature_browser".to_sym
        value = attributes["signatureBrowser"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeRecipientInfo.attribute_map["embed_url".to_sym] != nil
        name = "embed_url".to_sym
        value = attributes["embedUrl"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopeRecipientInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

