class SignatureTemplateSettingsInfo
  attr_accessor :owner_should_sign, :ordered_signature, :reminder_time, :step_expire_time, :template_expire_time, :email_subject, :email_body, :water_mark_text, :water_mark_image

  # :internal => :external
  def self.attribute_map
  {
      :owner_should_sign => :ownerShouldSign, :ordered_signature => :orderedSignature, :reminder_time => :reminderTime, :step_expire_time => :stepExpireTime, :template_expire_time => :templateExpireTime, :email_subject => :emailSubject, :email_body => :emailBody, :water_mark_text => :waterMarkText, :water_mark_image => :waterMarkImage

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateSettingsInfo.attribute_map["owner_should_sign".to_sym] != nil
        name = "owner_should_sign".to_sym
        value = attributes["ownerShouldSign"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateSettingsInfo.attribute_map["ordered_signature".to_sym] != nil
        name = "ordered_signature".to_sym
        value = attributes["orderedSignature"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateSettingsInfo.attribute_map["reminder_time".to_sym] != nil
        name = "reminder_time".to_sym
        value = attributes["reminderTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateSettingsInfo.attribute_map["step_expire_time".to_sym] != nil
        name = "step_expire_time".to_sym
        value = attributes["stepExpireTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateSettingsInfo.attribute_map["template_expire_time".to_sym] != nil
        name = "template_expire_time".to_sym
        value = attributes["templateExpireTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateSettingsInfo.attribute_map["email_subject".to_sym] != nil
        name = "email_subject".to_sym
        value = attributes["emailSubject"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateSettingsInfo.attribute_map["email_body".to_sym] != nil
        name = "email_body".to_sym
        value = attributes["emailBody"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateSettingsInfo.attribute_map["water_mark_text".to_sym] != nil
        name = "water_mark_text".to_sym
        value = attributes["waterMarkText"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateSettingsInfo.attribute_map["water_mark_image".to_sym] != nil
        name = "water_mark_image".to_sym
        value = attributes["waterMarkImage"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureTemplateSettingsInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

