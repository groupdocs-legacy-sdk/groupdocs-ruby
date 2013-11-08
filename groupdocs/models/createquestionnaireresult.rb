class CreateQuestionnaireResult
  attr_accessor :questionnaire_id, :questionnaire_guid, :adjusted_name

  # :internal => :external
  def self.attribute_map
  {
      :questionnaire_id => :questionnaire_id, :questionnaire_guid => :questionnaire_guid, :adjusted_name => :adjusted_name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if CreateQuestionnaireResult.attribute_map["questionnaire_id".to_sym] != nil
        name = "questionnaire_id".to_sym
        value = attributes["questionnaire_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreateQuestionnaireResult.attribute_map["questionnaire_guid".to_sym] != nil
        name = "questionnaire_guid".to_sym
        value = attributes["questionnaire_guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreateQuestionnaireResult.attribute_map["adjusted_name".to_sym] != nil
        name = "adjusted_name".to_sym
        value = attributes["adjusted_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    CreateQuestionnaireResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

