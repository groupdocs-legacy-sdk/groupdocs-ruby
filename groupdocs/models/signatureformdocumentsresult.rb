class SignatureFormDocumentsResult
  attr_accessor :form_id, :documents

  # :internal => :external
  def self.attribute_map
  {
      :form_id => :formId, :documents => :documents

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormDocumentsResult.attribute_map["form_id".to_sym] != nil
        name = "form_id".to_sym
        value = attributes["formId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormDocumentsResult.attribute_map["documents".to_sym] != nil
        name = "documents".to_sym
        value = attributes["documents"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SignatureFormDocumentInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SignatureFormDocumentsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

