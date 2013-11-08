class SignatureEnvelopeInfo
  attr_accessor :id, :name, :creation_date_time, :updated_date_time, :owner_guid, :status, :status_date_time, :reminder_time, :step_expire_time, :envelope_expire_time, :owner_should_sign, :ordered_signature, :email_subject, :email_body, :documents_count, :documents_pages, :recipients, :water_mark_text, :water_mark_image, :attach_signed_document, :include_view_link, :can_be_commented, :in_person_sign, :owner_name

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :name => :name, :creation_date_time => :creationDateTime, :updated_date_time => :updatedDateTime, :owner_guid => :ownerGuid, :status => :status, :status_date_time => :statusDateTime, :reminder_time => :reminderTime, :step_expire_time => :stepExpireTime, :envelope_expire_time => :envelopeExpireTime, :owner_should_sign => :ownerShouldSign, :ordered_signature => :orderedSignature, :email_subject => :emailSubject, :email_body => :emailBody, :documents_count => :documentsCount, :documents_pages => :documentsPages, :recipients => :recipients, :water_mark_text => :waterMarkText, :water_mark_image => :waterMarkImage, :attach_signed_document => :attachSignedDocument, :include_view_link => :includeViewLink, :can_be_commented => :canBeCommented, :in_person_sign => :inPersonSign, :owner_name => :ownerName

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopeInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["creation_date_time".to_sym] != nil
        name = "creation_date_time".to_sym
        value = attributes["creationDateTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["updated_date_time".to_sym] != nil
        name = "updated_date_time".to_sym
        value = attributes["updatedDateTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["owner_guid".to_sym] != nil
        name = "owner_guid".to_sym
        value = attributes["ownerGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["status_date_time".to_sym] != nil
        name = "status_date_time".to_sym
        value = attributes["statusDateTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["reminder_time".to_sym] != nil
        name = "reminder_time".to_sym
        value = attributes["reminderTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["step_expire_time".to_sym] != nil
        name = "step_expire_time".to_sym
        value = attributes["stepExpireTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["envelope_expire_time".to_sym] != nil
        name = "envelope_expire_time".to_sym
        value = attributes["envelopeExpireTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["owner_should_sign".to_sym] != nil
        name = "owner_should_sign".to_sym
        value = attributes["ownerShouldSign"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["ordered_signature".to_sym] != nil
        name = "ordered_signature".to_sym
        value = attributes["orderedSignature"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["email_subject".to_sym] != nil
        name = "email_subject".to_sym
        value = attributes["emailSubject"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["email_body".to_sym] != nil
        name = "email_body".to_sym
        value = attributes["emailBody"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["documents_count".to_sym] != nil
        name = "documents_count".to_sym
        value = attributes["documentsCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["documents_pages".to_sym] != nil
        name = "documents_pages".to_sym
        value = attributes["documentsPages"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["recipients".to_sym] != nil
        name = "recipients".to_sym
        value = attributes["recipients"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureEnvelopeRecipientInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureEnvelopeInfo.attribute_map["water_mark_text".to_sym] != nil
        name = "water_mark_text".to_sym
        value = attributes["waterMarkText"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["water_mark_image".to_sym] != nil
        name = "water_mark_image".to_sym
        value = attributes["waterMarkImage"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["attach_signed_document".to_sym] != nil
        name = "attach_signed_document".to_sym
        value = attributes["attachSignedDocument"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["include_view_link".to_sym] != nil
        name = "include_view_link".to_sym
        value = attributes["includeViewLink"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["can_be_commented".to_sym] != nil
        name = "can_be_commented".to_sym
        value = attributes["canBeCommented"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["in_person_sign".to_sym] != nil
        name = "in_person_sign".to_sym
        value = attributes["inPersonSign"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeInfo.attribute_map["owner_name".to_sym] != nil
        name = "owner_name".to_sym
        value = attributes["ownerName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopeInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

