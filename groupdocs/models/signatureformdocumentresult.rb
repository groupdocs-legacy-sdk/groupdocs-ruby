class SignatureFormDocumentResult
  attr_accessor :form_id, :document

  # :internal => :external
  def self.attribute_map
  {
      :form_id => :formId, :document => :document

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormDocumentResult.attribute_map["form_id".to_sym] != nil
        name = "form_id".to_sym
        value = attributes["formId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormDocumentResult.attribute_map["document".to_sym] != nil
        name = "document".to_sym
        value = attributes["document"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFormDocumentResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

