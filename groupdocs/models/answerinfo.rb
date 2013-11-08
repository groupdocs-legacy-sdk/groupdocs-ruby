class AnswerInfo
  attr_accessor :text, :value

  # :internal => :external
  def self.attribute_map
  {
      :text => :text, :value => :value

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AnswerInfo.attribute_map["text".to_sym] != nil
        name = "text".to_sym
        value = attributes["text"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AnswerInfo.attribute_map["value".to_sym] != nil
        name = "value".to_sym
        value = attributes["value"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AnswerInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

