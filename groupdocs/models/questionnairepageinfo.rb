class QuestionnairePageInfo
  attr_accessor :number, :title, :questions

  # :internal => :external
  def self.attribute_map
  {
      :number => :number, :title => :title, :questions => :questions

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if QuestionnairePageInfo.attribute_map["number".to_sym] != nil
        name = "number".to_sym
        value = attributes["number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnairePageInfo.attribute_map["title".to_sym] != nil
        name = "title".to_sym
        value = attributes["title"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if QuestionnairePageInfo.attribute_map["questions".to_sym] != nil
        name = "questions".to_sym
        value = attributes["questions"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push QuestionInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    QuestionnairePageInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

