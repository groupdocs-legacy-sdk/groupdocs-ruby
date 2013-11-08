class GetQuestionnaireCollectorResult
  attr_accessor :collector

  # :internal => :external
  def self.attribute_map
  {
      :collector => :collector

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetQuestionnaireCollectorResult.attribute_map["collector".to_sym] != nil
        name = "collector".to_sym
        value = attributes["collector"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetQuestionnaireCollectorResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

