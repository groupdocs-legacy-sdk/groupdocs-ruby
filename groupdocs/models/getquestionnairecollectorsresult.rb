class GetQuestionnaireCollectorsResult
  attr_accessor :collectors

  # :internal => :external
  def self.attribute_map
  {
      :collectors => :collectors

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetQuestionnaireCollectorsResult.attribute_map["collectors".to_sym] != nil
        name = "collectors".to_sym
        value = attributes["collectors"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push QuestionnaireCollectorInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetQuestionnaireCollectorsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

