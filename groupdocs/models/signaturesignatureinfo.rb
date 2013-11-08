class SignatureSignatureInfo
  attr_accessor :id, :user_guid, :recipient_id, :name, :company_name, :position, :first_name, :last_name, :full_name, :text_initials, :signature_image_file_id, :initials_image_file_id, :signature_image_url, :initials_image_url, :created_time_stamp

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :user_guid => :userGuid, :recipient_id => :recipientId, :name => :name, :company_name => :companyName, :position => :position, :first_name => :firstName, :last_name => :lastName, :full_name => :fullName, :text_initials => :textInitials, :signature_image_file_id => :signatureImageFileId, :initials_image_file_id => :initialsImageFileId, :signature_image_url => :signatureImageUrl, :initials_image_url => :initialsImageUrl, :created_time_stamp => :createdTimeStamp

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureSignatureInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["user_guid".to_sym] != nil
        name = "user_guid".to_sym
        value = attributes["userGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["recipient_id".to_sym] != nil
        name = "recipient_id".to_sym
        value = attributes["recipientId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["company_name".to_sym] != nil
        name = "company_name".to_sym
        value = attributes["companyName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["position".to_sym] != nil
        name = "position".to_sym
        value = attributes["position"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["firstName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["lastName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["full_name".to_sym] != nil
        name = "full_name".to_sym
        value = attributes["fullName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["text_initials".to_sym] != nil
        name = "text_initials".to_sym
        value = attributes["textInitials"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["signature_image_file_id".to_sym] != nil
        name = "signature_image_file_id".to_sym
        value = attributes["signatureImageFileId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["initials_image_file_id".to_sym] != nil
        name = "initials_image_file_id".to_sym
        value = attributes["initialsImageFileId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["signature_image_url".to_sym] != nil
        name = "signature_image_url".to_sym
        value = attributes["signatureImageUrl"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["initials_image_url".to_sym] != nil
        name = "initials_image_url".to_sym
        value = attributes["initialsImageUrl"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureSignatureInfo.attribute_map["created_time_stamp".to_sym] != nil
        name = "created_time_stamp".to_sym
        value = attributes["createdTimeStamp"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureSignatureInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

