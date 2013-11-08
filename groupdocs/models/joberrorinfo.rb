class JobErrorInfo
  attr_accessor :job_id, :original_document_id, :error_code, :expected_format

  # :internal => :external
  def self.attribute_map
  {
      :job_id => :job_id, :original_document_id => :original_document_id, :error_code => :error_code, :expected_format => :expected_format

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if JobErrorInfo.attribute_map["job_id".to_sym] != nil
        name = "job_id".to_sym
        value = attributes["job_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if JobErrorInfo.attribute_map["original_document_id".to_sym] != nil
        name = "original_document_id".to_sym
        value = attributes["original_document_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if JobErrorInfo.attribute_map["error_code".to_sym] != nil
        name = "error_code".to_sym
        value = attributes["error_code"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if JobErrorInfo.attribute_map["expected_format".to_sym] != nil
        name = "expected_format".to_sym
        value = attributes["expected_format"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    JobErrorInfo.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

