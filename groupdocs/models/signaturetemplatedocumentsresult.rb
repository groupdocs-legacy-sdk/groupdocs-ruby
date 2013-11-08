class SignatureTemplateDocumentsResult
  attr_accessor :template_id, :documents

  # :internal => :external
  def self.attribute_map
  {
      :template_id => :templateId, :documents => :documents

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureTemplateDocumentsResult.attribute_map["template_id".to_sym] != nil
        name = "template_id".to_sym
        value = attributes["templateId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureTemplateDocumentsResult.attribute_map["documents".to_sym] != nil
        name = "documents".to_sym
        value = attributes["documents"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureTemplateDocumentInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureTemplateDocumentsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

