class SetDocumentPasswordResult
  attr_accessor :name, :version, :size, :type, :type_str, :file_type_str, :document_path, :access, :url, :file_type, :id, :guid

  # :internal => :external
  def self.attribute_map
  {
      :name => :name, :version => :version, :size => :size, :type => :type, :type_str => :type_str, :file_type_str => :file_type_str, :document_path => :document_path, :access => :access, :url => :url, :file_type => :file_type, :id => :id, :guid => :guid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SetDocumentPasswordResult.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SetDocumentPasswordResult.attribute_map["version".to_sym] != nil
        name = "version".to_sym
        value = attributes["version"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SetDocumentPasswordResult.attribute_map["size".to_sym] != nil
        name = "size".to_sym
        value = attributes["size"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SetDocumentPasswordResult.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SetDocumentPasswordResult.attribute_map["type_str".to_sym] != nil
        name = "type_str".to_sym
        value = attributes["type_str"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SetDocumentPasswordResult.attribute_map["file_type_str".to_sym] != nil
        name = "file_type_str".to_sym
        value = attributes["file_type_str"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SetDocumentPasswordResult.attribute_map["document_path".to_sym] != nil
        name = "document_path".to_sym
        value = attributes["document_path"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SetDocumentPasswordResult.attribute_map["access".to_sym] != nil
        name = "access".to_sym
        value = attributes["access"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SetDocumentPasswordResult.attribute_map["url".to_sym] != nil
        name = "url".to_sym
        value = attributes["url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SetDocumentPasswordResult.attribute_map["file_type".to_sym] != nil
        name = "file_type".to_sym
        value = attributes["file_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SetDocumentPasswordResult.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SetDocumentPasswordResult.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SetDocumentPasswordResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

