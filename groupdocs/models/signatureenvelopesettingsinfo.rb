class SignatureEnvelopeSettingsInfo
  attr_accessor :owner_should_sign, :ordered_signature, :reminder_time, :step_expire_time, :envelope_expire_time, :email_subject, :email_body, :is_demo, :water_mark_text, :water_mark_image, :attach_signed_document, :include_view_link, :can_be_commented, :in_person_sign

  # :internal => :external
  def self.attribute_map
  {
      :owner_should_sign => :ownerShouldSign, :ordered_signature => :orderedSignature, :reminder_time => :reminderTime, :step_expire_time => :stepExpireTime, :envelope_expire_time => :envelopeExpireTime, :email_subject => :emailSubject, :email_body => :emailBody, :is_demo => :isDemo, :water_mark_text => :waterMarkText, :water_mark_image => :waterMarkImage, :attach_signed_document => :attachSignedDocument, :include_view_link => :includeViewLink, :can_be_commented => :canBeCommented, :in_person_sign => :inPersonSign

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopeSettingsInfo.attribute_map["owner_should_sign".to_sym] != nil
        name = "owner_should_sign".to_sym
        value = attributes["ownerShouldSign"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["ordered_signature".to_sym] != nil
        name = "ordered_signature".to_sym
        value = attributes["orderedSignature"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["reminder_time".to_sym] != nil
        name = "reminder_time".to_sym
        value = attributes["reminderTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["step_expire_time".to_sym] != nil
        name = "step_expire_time".to_sym
        value = attributes["stepExpireTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["envelope_expire_time".to_sym] != nil
        name = "envelope_expire_time".to_sym
        value = attributes["envelopeExpireTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["email_subject".to_sym] != nil
        name = "email_subject".to_sym
        value = attributes["emailSubject"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["email_body".to_sym] != nil
        name = "email_body".to_sym
        value = attributes["emailBody"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["is_demo".to_sym] != nil
        name = "is_demo".to_sym
        value = attributes["isDemo"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["water_mark_text".to_sym] != nil
        name = "water_mark_text".to_sym
        value = attributes["waterMarkText"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["water_mark_image".to_sym] != nil
        name = "water_mark_image".to_sym
        value = attributes["waterMarkImage"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["attach_signed_document".to_sym] != nil
        name = "attach_signed_document".to_sym
        value = attributes["attachSignedDocument"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["include_view_link".to_sym] != nil
        name = "include_view_link".to_sym
        value = attributes["includeViewLink"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["can_be_commented".to_sym] != nil
        name = "can_be_commented".to_sym
        value = attributes["canBeCommented"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeSettingsInfo.attribute_map["in_person_sign".to_sym] != nil
        name = "in_person_sign".to_sym
        value = attributes["inPersonSign"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopeSettingsInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

