class AnnotationReplyInfo
  attr_accessor :guid, :user_guid, :user_name, :text, :replied_on, :parent_reply_guid

  # :internal => :external
  def self.attribute_map
  {
      :guid => :guid, :user_guid => :userGuid, :user_name => :userName, :text => :text, :replied_on => :repliedOn, :parent_reply_guid => :parentReplyGuid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AnnotationReplyInfo.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationReplyInfo.attribute_map["user_guid".to_sym] != nil
        name = "user_guid".to_sym
        value = attributes["userGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationReplyInfo.attribute_map["user_name".to_sym] != nil
        name = "user_name".to_sym
        value = attributes["userName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationReplyInfo.attribute_map["text".to_sym] != nil
        name = "text".to_sym
        value = attributes["text"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationReplyInfo.attribute_map["replied_on".to_sym] != nil
        name = "replied_on".to_sym
        value = attributes["repliedOn"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnnotationReplyInfo.attribute_map["parent_reply_guid".to_sym] != nil
        name = "parent_reply_guid".to_sym
        value = attributes["parentReplyGuid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AnnotationReplyInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

