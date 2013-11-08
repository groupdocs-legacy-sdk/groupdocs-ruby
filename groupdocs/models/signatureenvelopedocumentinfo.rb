class SignatureEnvelopeDocumentInfo
  attr_accessor :document_id, :envelope_id, :order, :name, :original_document_m_d5, :final_document_m_d5, :original_document_pages_count, :fields_count, :original_document_imported_fields, :original_document_id

  # :internal => :external
  def self.attribute_map
  {
      :document_id => :documentId, :envelope_id => :envelopeId, :order => :order, :name => :name, :original_document_m_d5 => :originalDocumentMD5, :final_document_m_d5 => :finalDocumentMD5, :original_document_pages_count => :originalDocumentPagesCount, :fields_count => :fieldsCount, :original_document_imported_fields => :originalDocumentImportedFields, :original_document_id => :originalDocumentId

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureEnvelopeDocumentInfo.attribute_map["document_id".to_sym] != nil
        name = "document_id".to_sym
        value = attributes["documentId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeDocumentInfo.attribute_map["envelope_id".to_sym] != nil
        name = "envelope_id".to_sym
        value = attributes["envelopeId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeDocumentInfo.attribute_map["order".to_sym] != nil
        name = "order".to_sym
        value = attributes["order"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeDocumentInfo.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeDocumentInfo.attribute_map["original_document_m_d5".to_sym] != nil
        name = "original_document_m_d5".to_sym
        value = attributes["originalDocumentMD5"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeDocumentInfo.attribute_map["final_document_m_d5".to_sym] != nil
        name = "final_document_m_d5".to_sym
        value = attributes["finalDocumentMD5"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeDocumentInfo.attribute_map["original_document_pages_count".to_sym] != nil
        name = "original_document_pages_count".to_sym
        value = attributes["originalDocumentPagesCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeDocumentInfo.attribute_map["fields_count".to_sym] != nil
        name = "fields_count".to_sym
        value = attributes["fieldsCount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureEnvelopeDocumentInfo.attribute_map["original_document_imported_fields".to_sym] != nil
        name = "original_document_imported_fields".to_sym
        value = attributes["originalDocumentImportedFields"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureDocumentFieldInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SignatureEnvelopeDocumentInfo.attribute_map["original_document_id".to_sym] != nil
        name = "original_document_id".to_sym
        value = attributes["originalDocumentId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureEnvelopeDocumentInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

