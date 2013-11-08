class SignatureTemplateDocumentInfo
  attr_accessor :document_id, :template_id, :order, :name, :original_document_m_d5, :original_document_pages_count, :fields_count, :original_document_id

  # :internal => :external
  def self.attribute_map
  {
      :document_id => :documentId, :template_id => :templateId, :order => :order, :name => :name, :original_document_m_d5 => :originalDocumentMD5, :original_document_pages_count => :originalDocumentPagesCount, :fields_count => :fieldsCount, :original_document_id => :originalDocumentId

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateDocumentInfo.attribute_map["document_id".to_sym] != nil
        name = "document_id".to_sym
        value = attributes["documentId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateDocumentInfo.attribute_map["template_id".to_sym] != nil
        name = "template_id".to_sym
        value = attributes["templateId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateDocumentInfo.attribute_map["order".to_sym] != nil
        name = "order".to_sym
        value = attributes["order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateDocumentInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateDocumentInfo.attribute_map["original_document_m_d5".to_sym] != nil
        name = "original_document_m_d5".to_sym
        value = attributes["originalDocumentMD5"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateDocumentInfo.attribute_map["original_document_pages_count".to_sym] != nil
        name = "original_document_pages_count".to_sym
        value = attributes["originalDocumentPagesCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateDocumentInfo.attribute_map["fields_count".to_sym] != nil
        name = "fields_count".to_sym
        value = attributes["fieldsCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateDocumentInfo.attribute_map["original_document_id".to_sym] != nil
        name = "original_document_id".to_sym
        value = attributes["originalDocumentId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureTemplateDocumentInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

