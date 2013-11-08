class GetQuestionnaireExecutionsResult
  attr_accessor :questionnaire_guid, :executions

  # :internal => :external
  def self.attribute_map
  {
      :questionnaire_guid => :questionnaire_guid, :executions => :executions

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetQuestionnaireExecutionsResult.attribute_map["questionnaire_guid".to_sym] != nil
        name = "questionnaire_guid".to_sym
        value = attributes["questionnaire_guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetQuestionnaireExecutionsResult.attribute_map["executions".to_sym] != nil
        name = "executions".to_sym
        value = attributes["executions"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push QuestionnaireExecutionInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetQuestionnaireExecutionsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

