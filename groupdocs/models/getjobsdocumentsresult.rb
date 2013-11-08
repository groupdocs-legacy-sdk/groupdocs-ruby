class GetJobsDocumentsResult
  attr_accessor :count, :entries

  # :internal => :external
  def self.attribute_map
  {
      :count => :count, :entries => :entries

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetJobsDocumentsResult.attribute_map["count".to_sym] != nil
        name = "count".to_sym
        value = attributes["count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobsDocumentsResult.attribute_map["entries".to_sym] != nil
        name = "entries".to_sym
        value = attributes["entries"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push JobDocumentsEntry.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    GetJobsDocumentsResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

