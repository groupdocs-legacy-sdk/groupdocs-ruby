class ChangesResult
  attr_accessor :result_file__id, :source_file__id, :target_file__id, :source_file_name, :target_file_name, :changes

  # :internal => :external
  def self.attribute_map
  {
      :result_file__id => :result_file_Id, :source_file__id => :source_file_Id, :target_file__id => :target_file_Id, :source_file_name => :source_file_name, :target_file_name => :target_file_name, :changes => :changes

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ChangesResult.attribute_map["result_file__id".to_sym] != nil
        name = "result_file__id".to_sym
        value = attributes["result_file_Id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ChangesResult.attribute_map["source_file__id".to_sym] != nil
        name = "source_file__id".to_sym
        value = attributes["source_file_Id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ChangesResult.attribute_map["target_file__id".to_sym] != nil
        name = "target_file__id".to_sym
        value = attributes["target_file_Id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ChangesResult.attribute_map["source_file_name".to_sym] != nil
        name = "source_file_name".to_sym
        value = attributes["source_file_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ChangesResult.attribute_map["target_file_name".to_sym] != nil
        name = "target_file_name".to_sym
        value = attributes["target_file_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ChangesResult.attribute_map["changes".to_sym] != nil
        name = "changes".to_sym
        value = attributes["changes"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ChangeInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    ChangesResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

