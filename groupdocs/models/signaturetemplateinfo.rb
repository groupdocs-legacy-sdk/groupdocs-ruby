class SignatureTemplateInfo
  attr_accessor :id, :name, :owner_guid, :reminder_time, :step_expire_time, :template_expire_time, :owner_should_sign, :ordered_signature, :email_subject, :email_body, :documents_count, :documents_pages, :recipients, :water_mark_text, :water_mark_image, :fields_count

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :name => :name, :owner_guid => :ownerGuid, :reminder_time => :reminderTime, :step_expire_time => :stepExpireTime, :template_expire_time => :templateExpireTime, :owner_should_sign => :ownerShouldSign, :ordered_signature => :orderedSignature, :email_subject => :emailSubject, :email_body => :emailBody, :documents_count => :documentsCount, :documents_pages => :documentsPages, :recipients => :recipients, :water_mark_text => :waterMarkText, :water_mark_image => :waterMarkImage, :fields_count => :fieldsCount

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["owner_guid".to_sym] != nil
        name = "owner_guid".to_sym
        value = attributes["ownerGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["reminder_time".to_sym] != nil
        name = "reminder_time".to_sym
        value = attributes["reminderTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["step_expire_time".to_sym] != nil
        name = "step_expire_time".to_sym
        value = attributes["stepExpireTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["template_expire_time".to_sym] != nil
        name = "template_expire_time".to_sym
        value = attributes["templateExpireTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["owner_should_sign".to_sym] != nil
        name = "owner_should_sign".to_sym
        value = attributes["ownerShouldSign"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["ordered_signature".to_sym] != nil
        name = "ordered_signature".to_sym
        value = attributes["orderedSignature"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["email_subject".to_sym] != nil
        name = "email_subject".to_sym
        value = attributes["emailSubject"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["email_body".to_sym] != nil
        name = "email_body".to_sym
        value = attributes["emailBody"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["documents_count".to_sym] != nil
        name = "documents_count".to_sym
        value = attributes["documentsCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["documents_pages".to_sym] != nil
        name = "documents_pages".to_sym
        value = attributes["documentsPages"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["recipients".to_sym] != nil
        name = "recipients".to_sym
        value = attributes["recipients"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureTemplateRecipientInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureTemplateInfo.attribute_map["water_mark_text".to_sym] != nil
        name = "water_mark_text".to_sym
        value = attributes["waterMarkText"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["water_mark_image".to_sym] != nil
        name = "water_mark_image".to_sym
        value = attributes["waterMarkImage"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateInfo.attribute_map["fields_count".to_sym] != nil
        name = "fields_count".to_sym
        value = attributes["fieldsCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureTemplateInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

