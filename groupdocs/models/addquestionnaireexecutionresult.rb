class AddQuestionnaireExecutionResult
  attr_accessor :collector_id, :execution_id, :execution_guid

  # :internal => :external
  def self.attribute_map
  {
      :collector_id => :collector_id, :execution_id => :execution_id, :execution_guid => :execution_guid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AddQuestionnaireExecutionResult.attribute_map["collector_id".to_sym] != nil
        name = "collector_id".to_sym
        value = attributes["collector_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddQuestionnaireExecutionResult.attribute_map["execution_id".to_sym] != nil
        name = "execution_id".to_sym
        value = attributes["execution_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddQuestionnaireExecutionResult.attribute_map["execution_guid".to_sym] != nil
        name = "execution_guid".to_sym
        value = attributes["execution_guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AddQuestionnaireExecutionResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

