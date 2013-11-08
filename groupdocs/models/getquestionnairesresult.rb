class GetQuestionnairesResult
  attr_accessor :questionnaires

  # :internal => :external
  def self.attribute_map
  {
      :questionnaires => :questionnaires

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetQuestionnairesResult.attribute_map["questionnaires".to_sym] != nil
        name = "questionnaires".to_sym
        value = attributes["questionnaires"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push QuestionnaireInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetQuestionnairesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

