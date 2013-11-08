class UploadRequestResult
  attr_accessor :adj_name, :url, :type, :file_type, :size, :version, :view_job_id, :thumbnail, :upload_time, :id, :guid

  # :internal => :external
  def self.attribute_map
  {
      :adj_name => :adj_name, :url => :url, :type => :type, :file_type => :file_type, :size => :size, :version => :version, :view_job_id => :view_job_id, :thumbnail => :thumbnail, :upload_time => :upload_time, :id => :id, :guid => :guid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if UploadRequestResult.attribute_map["adj_name".to_sym] != nil
        name = "adj_name".to_sym
        value = attributes["adj_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UploadRequestResult.attribute_map["url".to_sym] != nil
        name = "url".to_sym
        value = attributes["url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UploadRequestResult.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UploadRequestResult.attribute_map["file_type".to_sym] != nil
        name = "file_type".to_sym
        value = attributes["file_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UploadRequestResult.attribute_map["size".to_sym] != nil
        name = "size".to_sym
        value = attributes["size"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UploadRequestResult.attribute_map["version".to_sym] != nil
        name = "version".to_sym
        value = attributes["version"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UploadRequestResult.attribute_map["view_job_id".to_sym] != nil
        name = "view_job_id".to_sym
        value = attributes["view_job_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UploadRequestResult.attribute_map["thumbnail".to_sym] != nil
        name = "thumbnail".to_sym
        value = attributes["thumbnail"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UploadRequestResult.attribute_map["upload_time".to_sym] != nil
        name = "upload_time".to_sym
        value = attributes["upload_time"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UploadRequestResult.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if UploadRequestResult.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    UploadRequestResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

