class AnnotationInfo
  attr_accessor :guid, :document_guid, :session_guid, :creator_guid, :box, :annotation_position, :range, :svg_path, :type, :access, :replies, :created_on, :font_color, :field_text, :font_family, :font_size

  # :internal => :external
  def self.attribute_map
  {
      :guid => :guid, :document_guid => :documentGuid, :session_guid => :sessionGuid, :creator_guid => :creatorGuid, :box => :box, :annotation_position => :annotationPosition, :range => :range, :svg_path => :svgPath, :type => :type, :access => :access, :replies => :replies, :created_on => :createdOn, :font_color => :fontColor, :field_text => :fieldText, :font_family => :fontFamily, :font_size => :fontSize

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AnnotationInfo.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["document_guid".to_sym] != nil
        name = "document_guid".to_sym
        value = attributes["documentGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["session_guid".to_sym] != nil
        name = "session_guid".to_sym
        value = attributes["sessionGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["creator_guid".to_sym] != nil
        name = "creator_guid".to_sym
        value = attributes["creatorGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["box".to_sym] != nil
        name = "box".to_sym
        value = attributes["box"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["annotation_position".to_sym] != nil
        name = "annotation_position".to_sym
        value = attributes["annotationPosition"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["range".to_sym] != nil
        name = "range".to_sym
        value = attributes["range"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["svg_path".to_sym] != nil
        name = "svg_path".to_sym
        value = attributes["svgPath"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["access".to_sym] != nil
        name = "access".to_sym
        value = attributes["access"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["replies".to_sym] != nil
        name = "replies".to_sym
        value = attributes["replies"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push AnnotationReplyInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if AnnotationInfo.attribute_map["created_on".to_sym] != nil
        name = "created_on".to_sym
        value = attributes["createdOn"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["font_color".to_sym] != nil
        name = "font_color".to_sym
        value = attributes["fontColor"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["field_text".to_sym] != nil
        name = "field_text".to_sym
        value = attributes["fieldText"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["font_family".to_sym] != nil
        name = "font_family".to_sym
        value = attributes["fontFamily"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationInfo.attribute_map["font_size".to_sym] != nil
        name = "font_size".to_sym
        value = attributes["fontSize"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AnnotationInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

