class QuestionInfo
  attr_accessor :field, :text, :def_answer, :required, :disabled, :type, :answers, :conditions

  # :internal => :external
  def self.attribute_map
  {
      :field => :field, :text => :text, :def_answer => :def_answer, :required => :required, :disabled => :disabled, :type => :type, :answers => :answers, :conditions => :conditions

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if QuestionInfo.attribute_map["field".to_sym] != nil
        name = "field".to_sym
        value = attributes["field"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionInfo.attribute_map["text".to_sym] != nil
        name = "text".to_sym
        value = attributes["text"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionInfo.attribute_map["def_answer".to_sym] != nil
        name = "def_answer".to_sym
        value = attributes["def_answer"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionInfo.attribute_map["required".to_sym] != nil
        name = "required".to_sym
        value = attributes["required"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionInfo.attribute_map["disabled".to_sym] != nil
        name = "disabled".to_sym
        value = attributes["disabled"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionInfo.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionInfo.attribute_map["answers".to_sym] != nil
        name = "answers".to_sym
        value = attributes["answers"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push AnswerInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if QuestionInfo.attribute_map["conditions".to_sym] != nil
        name = "conditions".to_sym
        value = attributes["conditions"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ConditionInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    QuestionInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

