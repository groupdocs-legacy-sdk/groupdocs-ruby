class AddReplyResult
  attr_accessor :reply_guid, :annotation_guid, :reply_date_time

  # :internal => :external
  def self.attribute_map
  {
      :reply_guid => :replyGuid, :annotation_guid => :annotationGuid, :reply_date_time => :replyDateTime

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AddReplyResult.attribute_map["reply_guid".to_sym] != nil
        name = "reply_guid".to_sym
        value = attributes["replyGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddReplyResult.attribute_map["annotation_guid".to_sym] != nil
        name = "annotation_guid".to_sym
        value = attributes["annotationGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddReplyResult.attribute_map["reply_date_time".to_sym] != nil
        name = "reply_date_time".to_sym
        value = attributes["replyDateTime"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AddReplyResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

