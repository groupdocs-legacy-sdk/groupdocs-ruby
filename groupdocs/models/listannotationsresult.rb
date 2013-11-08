class ListAnnotationsResult
  attr_accessor :document_guid, :session_guid, :annotations, :server_time

  # :internal => :external
  def self.attribute_map
  {
      :document_guid => :documentGuid, :session_guid => :sessionGuid, :annotations => :annotations, :server_time => :serverTime

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ListAnnotationsResult.attribute_map["document_guid".to_sym] != nil
        name = "document_guid".to_sym
        value = attributes["documentGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ListAnnotationsResult.attribute_map["session_guid".to_sym] != nil
        name = "session_guid".to_sym
        value = attributes["sessionGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ListAnnotationsResult.attribute_map["annotations".to_sym] != nil
        name = "annotations".to_sym
        value = attributes["annotations"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push AnnotationInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if ListAnnotationsResult.attribute_map["server_time".to_sym] != nil
        name = "server_time".to_sym
        value = attributes["serverTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ListAnnotationsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

