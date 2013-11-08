class AddDocumentDataSourceResult
  attr_accessor :job_id, :document_id, :datasource_id

  # :internal => :external
  def self.attribute_map
  {
      :job_id => :job_id, :document_id => :document_id, :datasource_id => :datasource_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AddDocumentDataSourceResult.attribute_map["job_id".to_sym] != nil
        name = "job_id".to_sym
        value = attributes["job_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddDocumentDataSourceResult.attribute_map["document_id".to_sym] != nil
        name = "document_id".to_sym
        value = attributes["document_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddDocumentDataSourceResult.attribute_map["datasource_id".to_sym] != nil
        name = "datasource_id".to_sym
        value = attributes["datasource_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AddDocumentDataSourceResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

