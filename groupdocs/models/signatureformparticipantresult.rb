class SignatureFormParticipantResult
  attr_accessor :form_id, :participant

  # :internal => :external
  def self.attribute_map
  {
      :form_id => :formId, :participant => :participant

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormParticipantResult.attribute_map["form_id".to_sym] != nil
        name = "form_id".to_sym
        value = attributes["formId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormParticipantResult.attribute_map["participant".to_sym] != nil
        name = "participant".to_sym
        value = attributes["participant"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFormParticipantResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

