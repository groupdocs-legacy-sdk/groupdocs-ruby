class UpdateQuestionnaireExecutionResult
  attr_accessor :execution_id

  # :internal => :external
  def self.attribute_map
  {
      :execution_id => :execution_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if UpdateQuestionnaireExecutionResult.attribute_map["execution_id".to_sym] != nil
        name = "execution_id".to_sym
        value = attributes["execution_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    UpdateQuestionnaireExecutionResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

