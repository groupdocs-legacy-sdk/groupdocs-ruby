class SignatureSignDocumentResult
  attr_accessor :job_id

  # :internal => :external
  def self.attribute_map
  {
      :job_id => :jobId

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SignatureSignDocumentResult.attribute_map["job_id".to_sym] != nil
        name = "job_id".to_sym
        value = attributes["jobId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SignatureSignDocumentResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

