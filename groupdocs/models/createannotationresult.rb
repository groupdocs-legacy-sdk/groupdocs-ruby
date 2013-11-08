class CreateAnnotationResult
  attr_accessor :id, :annotation_guid, :reply_guid, :document_guid, :session_guid, :access, :server_time

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :annotation_guid => :annotationGuid, :reply_guid => :replyGuid, :document_guid => :documentGuid, :session_guid => :sessionGuid, :access => :access, :server_time => :serverTime

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if CreateAnnotationResult.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreateAnnotationResult.attribute_map["annotation_guid".to_sym] != nil
        name = "annotation_guid".to_sym
        value = attributes["annotationGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreateAnnotationResult.attribute_map["reply_guid".to_sym] != nil
        name = "reply_guid".to_sym
        value = attributes["replyGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreateAnnotationResult.attribute_map["document_guid".to_sym] != nil
        name = "document_guid".to_sym
        value = attributes["documentGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreateAnnotationResult.attribute_map["session_guid".to_sym] != nil
        name = "session_guid".to_sym
        value = attributes["sessionGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreateAnnotationResult.attribute_map["access".to_sym] != nil
        name = "access".to_sym
        value = attributes["access"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreateAnnotationResult.attribute_map["server_time".to_sym] != nil
        name = "server_time".to_sym
        value = attributes["serverTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    CreateAnnotationResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

