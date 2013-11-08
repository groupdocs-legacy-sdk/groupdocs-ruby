class ConditionInfo
  attr_accessor :field_id, :page_id, :answer_id, :action, :operator

  # :internal => :external
  def self.attribute_map
  {
      :field_id => :fieldId, :page_id => :pageId, :answer_id => :answerId, :action => :action, :operator => :operator

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ConditionInfo.attribute_map["field_id".to_sym] != nil
        name = "field_id".to_sym
        value = attributes["fieldId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConditionInfo.attribute_map["page_id".to_sym] != nil
        name = "page_id".to_sym
        value = attributes["pageId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConditionInfo.attribute_map["answer_id".to_sym] != nil
        name = "answer_id".to_sym
        value = attributes["answerId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConditionInfo.attribute_map["action".to_sym] != nil
        name = "action".to_sym
        value = attributes["action"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ConditionInfo.attribute_map["operator".to_sym] != nil
        name = "operator".to_sym
        value = attributes["operator"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ConditionInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

