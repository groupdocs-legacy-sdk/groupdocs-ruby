class SignatureFormSettingsInfo
  attr_accessor :name, :fields_in_final_file_name, :can_participant_download_form, :water_mark_text, :water_mark_image, :notify_owner_on_sign , :attach_signed_document

  # :internal => :external
  def self.attribute_map
  {
      :name => :name, :fields_in_final_file_name => :fieldsInFinalFileName, :can_participant_download_form => :canParticipantDownloadForm, :water_mark_text => :waterMarkText, :water_mark_image => :waterMarkImage, :notify_owner_on_sign  => :notifyOwnerOnSign , :attach_signed_document => :attachSignedDocument

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormSettingsInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormSettingsInfo.attribute_map["fields_in_final_file_name".to_sym] != nil
        name = "fields_in_final_file_name".to_sym
        value = attributes["fieldsInFinalFileName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormSettingsInfo.attribute_map["can_participant_download_form".to_sym] != nil
        name = "can_participant_download_form".to_sym
        value = attributes["canParticipantDownloadForm"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormSettingsInfo.attribute_map["water_mark_text".to_sym] != nil
        name = "water_mark_text".to_sym
        value = attributes["waterMarkText"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormSettingsInfo.attribute_map["water_mark_image".to_sym] != nil
        name = "water_mark_image".to_sym
        value = attributes["waterMarkImage"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormSettingsInfo.attribute_map["notify_owner_on_sign ".to_sym] != nil
        name = "notify_owner_on_sign ".to_sym
        value = attributes["notifyOwnerOnSign "]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormSettingsInfo.attribute_map["attach_signed_document".to_sym] != nil
        name = "attach_signed_document".to_sym
        value = attributes["attachSignedDocument"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFormSettingsInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

