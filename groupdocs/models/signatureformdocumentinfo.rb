class SignatureFormDocumentInfo
  attr_accessor :id, :name, :form_guid, :document_guid, :original_document_guid, :original_document_m_d5, :assigned_date_time, :order

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :name => :name, :form_guid => :formGuid, :document_guid => :documentGuid, :original_document_guid => :originalDocumentGuid, :original_document_m_d5 => :originalDocumentMD5, :assigned_date_time => :assignedDateTime, :order => :order

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormDocumentInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormDocumentInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormDocumentInfo.attribute_map["form_guid".to_sym] != nil
        name = "form_guid".to_sym
        value = attributes["formGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormDocumentInfo.attribute_map["document_guid".to_sym] != nil
        name = "document_guid".to_sym
        value = attributes["documentGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormDocumentInfo.attribute_map["original_document_guid".to_sym] != nil
        name = "original_document_guid".to_sym
        value = attributes["originalDocumentGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormDocumentInfo.attribute_map["original_document_m_d5".to_sym] != nil
        name = "original_document_m_d5".to_sym
        value = attributes["originalDocumentMD5"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormDocumentInfo.attribute_map["assigned_date_time".to_sym] != nil
        name = "assigned_date_time".to_sym
        value = attributes["assignedDateTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormDocumentInfo.attribute_map["order".to_sym] != nil
        name = "order".to_sym
        value = attributes["order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFormDocumentInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

