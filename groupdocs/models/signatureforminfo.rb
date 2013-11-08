class SignatureFormInfo
  attr_accessor :id, :name, :owner_guid, :template_guid, :created_time_stamp, :status, :status_date_time, :documents_count, :documents_pages, :participants_count, :fields_in_final_file_name, :can_participant_download_form, :water_mark_text, :water_mark_image, :fields_count, :notify_owner_on_sign, :attach_signed_document

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :name => :name, :owner_guid => :ownerGuid, :template_guid => :templateGuid, :created_time_stamp => :createdTimeStamp, :status => :status, :status_date_time => :statusDateTime, :documents_count => :documentsCount, :documents_pages => :documentsPages, :participants_count => :participantsCount, :fields_in_final_file_name => :fieldsInFinalFileName, :can_participant_download_form => :canParticipantDownloadForm, :water_mark_text => :waterMarkText, :water_mark_image => :waterMarkImage, :fields_count => :fieldsCount, :notify_owner_on_sign => :notifyOwnerOnSign, :attach_signed_document => :attachSignedDocument

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["owner_guid".to_sym] != nil
        name = "owner_guid".to_sym
        value = attributes["ownerGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["template_guid".to_sym] != nil
        name = "template_guid".to_sym
        value = attributes["templateGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["created_time_stamp".to_sym] != nil
        name = "created_time_stamp".to_sym
        value = attributes["createdTimeStamp"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["status_date_time".to_sym] != nil
        name = "status_date_time".to_sym
        value = attributes["statusDateTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["documents_count".to_sym] != nil
        name = "documents_count".to_sym
        value = attributes["documentsCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["documents_pages".to_sym] != nil
        name = "documents_pages".to_sym
        value = attributes["documentsPages"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["participants_count".to_sym] != nil
        name = "participants_count".to_sym
        value = attributes["participantsCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["fields_in_final_file_name".to_sym] != nil
        name = "fields_in_final_file_name".to_sym
        value = attributes["fieldsInFinalFileName"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureFormInfo.attribute_map["can_participant_download_form".to_sym] != nil
        name = "can_participant_download_form".to_sym
        value = attributes["canParticipantDownloadForm"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["water_mark_text".to_sym] != nil
        name = "water_mark_text".to_sym
        value = attributes["waterMarkText"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["water_mark_image".to_sym] != nil
        name = "water_mark_image".to_sym
        value = attributes["waterMarkImage"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["fields_count".to_sym] != nil
        name = "fields_count".to_sym
        value = attributes["fieldsCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["notify_owner_on_sign".to_sym] != nil
        name = "notify_owner_on_sign".to_sym
        value = attributes["notifyOwnerOnSign"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormInfo.attribute_map["attach_signed_document".to_sym] != nil
        name = "attach_signed_document".to_sym
        value = attributes["attachSignedDocument"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFormInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

