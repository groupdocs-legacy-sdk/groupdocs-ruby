class GetQuestionnaireExecutionResult
  attr_accessor :questionnaire, :execution

  # :internal => :external
  def self.attribute_map
  {
      :questionnaire => :questionnaire, :execution => :execution

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetQuestionnaireExecutionResult.attribute_map["questionnaire".to_sym] != nil
        name = "questionnaire".to_sym
        value = attributes["questionnaire"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetQuestionnaireExecutionResult.attribute_map["execution".to_sym] != nil
        name = "execution".to_sym
        value = attributes["execution"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetQuestionnaireExecutionResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

