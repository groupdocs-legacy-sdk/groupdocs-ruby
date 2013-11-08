class GetJobDocumentsResult
  attr_accessor :job_status, :inputs, :outputs

  # :internal => :external
  def self.attribute_map
  {
      :job_status => :job_status, :inputs => :inputs, :outputs => :outputs

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetJobDocumentsResult.attribute_map["job_status".to_sym] != nil
        name = "job_status".to_sym
        value = attributes["job_status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobDocumentsResult.attribute_map["inputs".to_sym] != nil
        name = "inputs".to_sym
        value = attributes["inputs"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push JobInputDocument.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if GetJobDocumentsResult.attribute_map["outputs".to_sym] != nil
        name = "outputs".to_sym
        value = attributes["outputs"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push JobOutputDocument.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetJobDocumentsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

