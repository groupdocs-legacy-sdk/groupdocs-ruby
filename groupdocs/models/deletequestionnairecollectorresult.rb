class DeleteQuestionnaireCollectorResult
  attr_accessor :questionnaire_id, :collector_id

  # :internal => :external
  def self.attribute_map
  {
      :questionnaire_id => :questionnaire_id, :collector_id => :collector_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if DeleteQuestionnaireCollectorResult.attribute_map["questionnaire_id".to_sym] != nil
        name = "questionnaire_id".to_sym
        value = attributes["questionnaire_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DeleteQuestionnaireCollectorResult.attribute_map["collector_id".to_sym] != nil
        name = "collector_id".to_sym
        value = attributes["collector_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    DeleteQuestionnaireCollectorResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

