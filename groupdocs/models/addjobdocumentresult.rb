class AddJobDocumentResult
  attr_accessor :document_id

  # :internal => :external
  def self.attribute_map
  {
      :document_id => :document_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AddJobDocumentResult.attribute_map["document_id".to_sym] != nil
        name = "document_id".to_sym
        value = attributes["document_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AddJobDocumentResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

