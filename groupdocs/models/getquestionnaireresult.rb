class GetQuestionnaireResult
  attr_accessor :questionnaire

  # :internal => :external
  def self.attribute_map
  {
      :questionnaire => :questionnaire

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetQuestionnaireResult.attribute_map["questionnaire".to_sym] != nil
        name = "questionnaire".to_sym
        value = attributes["questionnaire"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetQuestionnaireResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

