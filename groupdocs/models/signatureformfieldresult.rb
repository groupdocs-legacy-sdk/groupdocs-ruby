class SignatureFormFieldResult
  attr_accessor :form_id, :document_id, :participant_id, :field

  # :internal => :external
  def self.attribute_map
  {
      :form_id => :formId, :document_id => :documentId, :participant_id => :participantId, :field => :field

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormFieldResult.attribute_map["form_id".to_sym] != nil
        name = "form_id".to_sym
        value = attributes["formId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldResult.attribute_map["document_id".to_sym] != nil
        name = "document_id".to_sym
        value = attributes["documentId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldResult.attribute_map["participant_id".to_sym] != nil
        name = "participant_id".to_sym
        value = attributes["participantId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormFieldResult.attribute_map["field".to_sym] != nil
        name = "field".to_sym
        value = attributes["field"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFormFieldResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

