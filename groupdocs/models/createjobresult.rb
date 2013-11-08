class CreateJobResult
  attr_accessor :job_id, :job_guid

  # :internal => :external
  def self.attribute_map
  {
      :job_id => :job_id, :job_guid => :job_guid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if CreateJobResult.attribute_map["job_id".to_sym] != nil
        name = "job_id".to_sym
        value = attributes["job_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreateJobResult.attribute_map["job_guid".to_sym] != nil
        name = "job_guid".to_sym
        value = attributes["job_guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    CreateJobResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

