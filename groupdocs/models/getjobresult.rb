class GetJobResult
  attr_accessor :id, :out_formats, :actions, :status, :email_results, :priority, :url_only, :documents, :requested_time, :scheduled_time, :guid, :name, :callback_url

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :out_formats => :out_formats, :actions => :actions, :status => :status, :email_results => :email_results, :priority => :priority, :url_only => :url_only, :documents => :documents, :requested_time => :requested_time, :scheduled_time => :scheduled_time, :guid => :guid, :name => :name, :callback_url => :callback_url

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if GetJobResult.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobResult.attribute_map["out_formats".to_sym] != nil
        name = "out_formats".to_sym
        value = attributes["out_formats"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if GetJobResult.attribute_map["actions".to_sym] != nil
        name = "actions".to_sym
        value = attributes["actions"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobResult.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobResult.attribute_map["email_results".to_sym] != nil
        name = "email_results".to_sym
        value = attributes["email_results"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobResult.attribute_map["priority".to_sym] != nil
        name = "priority".to_sym
        value = attributes["priority"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobResult.attribute_map["url_only".to_sym] != nil
        name = "url_only".to_sym
        value = attributes["url_only"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobResult.attribute_map["documents".to_sym] != nil
        name = "documents".to_sym
        value = attributes["documents"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobResult.attribute_map["requested_time".to_sym] != nil
        name = "requested_time".to_sym
        value = attributes["requested_time"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobResult.attribute_map["scheduled_time".to_sym] != nil
        name = "scheduled_time".to_sym
        value = attributes["scheduled_time"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobResult.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobResult.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if GetJobResult.attribute_map["callback_url".to_sym] != nil
        name = "callback_url".to_sym
        value = attributes["callback_url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    GetJobResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

