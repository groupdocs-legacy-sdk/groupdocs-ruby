class QuestionnaireCollectorInfo
  attr_accessor :id, :guid, :type, :status, :questionnaire_id, :resolved_executions, :emails, :modified

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :guid => :guid, :type => :type, :status => :status, :questionnaire_id => :questionnaire_id, :resolved_executions => :resolved_executions, :emails => :emails, :modified => :modified

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if QuestionnaireCollectorInfo.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireCollectorInfo.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireCollectorInfo.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireCollectorInfo.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireCollectorInfo.attribute_map["questionnaire_id".to_sym] != nil
        name = "questionnaire_id".to_sym
        value = attributes["questionnaire_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireCollectorInfo.attribute_map["resolved_executions".to_sym] != nil
        name = "resolved_executions".to_sym
        value = attributes["resolved_executions"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnaireCollectorInfo.attribute_map["emails".to_sym] != nil
        name = "emails".to_sym
        value = attributes["emails"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if QuestionnaireCollectorInfo.attribute_map["modified".to_sym] != nil
        name = "modified".to_sym
        value = attributes["modified"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    QuestionnaireCollectorInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

