class SignatureFormParticipantInfo
  attr_accessor :id, :document_guid, :fill_date_time, :status

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :document_guid => :documentGuid, :fill_date_time => :fillDateTime, :status => :status

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureFormParticipantInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormParticipantInfo.attribute_map["document_guid".to_sym] != nil
        name = "document_guid".to_sym
        value = attributes["documentGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormParticipantInfo.attribute_map["fill_date_time".to_sym] != nil
        name = "fill_date_time".to_sym
        value = attributes["fillDateTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SignatureFormParticipantInfo.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureFormParticipantInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

