class QuestionnaireExecutionInfo
  attr_accessor :status, :guid, :collector_id, :collector_guid, :questionnaire_name, :owner, :executive, :approver, :datasource_id, :id, :modified, :document

  # :internal => :external
  def self.attribute_map
  {
      :status => :status, :guid => :guid, :collector_id => :collector_id, :collector_guid => :collector_guid, :questionnaire_name => :questionnaire_name, :owner => :owner, :executive => :executive, :approver => :approver, :datasource_id => :datasource_id, :id => :id, :modified => :modified, :document => :document

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if QuestionnaireExecutionInfo.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireExecutionInfo.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireExecutionInfo.attribute_map["collector_id".to_sym] != nil
        name = "collector_id".to_sym
        value = attributes["collector_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireExecutionInfo.attribute_map["collector_guid".to_sym] != nil
        name = "collector_guid".to_sym
        value = attributes["collector_guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireExecutionInfo.attribute_map["questionnaire_name".to_sym] != nil
        name = "questionnaire_name".to_sym
        value = attributes["questionnaire_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireExecutionInfo.attribute_map["owner".to_sym] != nil
        name = "owner".to_sym
        value = attributes["owner"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireExecutionInfo.attribute_map["executive".to_sym] != nil
        name = "executive".to_sym
        value = attributes["executive"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireExecutionInfo.attribute_map["approver".to_sym] != nil
        name = "approver".to_sym
        value = attributes["approver"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireExecutionInfo.attribute_map["datasource_id".to_sym] != nil
        name = "datasource_id".to_sym
        value = attributes["datasource_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireExecutionInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireExecutionInfo.attribute_map["modified".to_sym] != nil
        name = "modified".to_sym
        value = attributes["modified"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireExecutionInfo.attribute_map["document".to_sym] != nil
        name = "document".to_sym
        value = attributes["document"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    QuestionnaireExecutionInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

