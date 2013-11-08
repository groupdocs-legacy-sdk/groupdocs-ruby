class GetJobsResult
  attr_accessor :count, :jobs

  # :internal => :external
  def self.attribute_map
  {
      :count => :count, :jobs => :jobs

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetJobsResult.attribute_map["count".to_sym] != nil
        name = "count".to_sym
        value = attributes["count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobsResult.attribute_map["jobs".to_sym] != nil
        name = "jobs".to_sym
        value = attributes["jobs"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push JobInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetJobsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

