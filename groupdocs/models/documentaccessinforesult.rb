class DocumentAccessInfoResult
  attr_accessor :status, :owner, :sharers, :shared_on, :name, :version, :size, :type, :type_str, :file_type_str, :document_path, :access, :url, :file_type, :id, :guid

  # :internal => :external
  def self.attribute_map
  {
      :status => :status, :owner => :owner, :sharers => :sharers, :shared_on => :shared_on, :name => :name, :version => :version, :size => :size, :type => :type, :type_str => :type_str, :file_type_str => :file_type_str, :document_path => :document_path, :access => :access, :url => :url, :file_type => :file_type, :id => :id, :guid => :guid

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if DocumentAccessInfoResult.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["owner".to_sym] != nil
        name = "owner".to_sym
        value = attributes["owner"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["sharers".to_sym] != nil
        name = "sharers".to_sym
        value = attributes["sharers"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push UserInfo.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if DocumentAccessInfoResult.attribute_map["shared_on".to_sym] != nil
        name = "shared_on".to_sym
        value = attributes["shared_on"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["version".to_sym] != nil
        name = "version".to_sym
        value = attributes["version"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["size".to_sym] != nil
        name = "size".to_sym
        value = attributes["size"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["type_str".to_sym] != nil
        name = "type_str".to_sym
        value = attributes["type_str"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["file_type_str".to_sym] != nil
        name = "file_type_str".to_sym
        value = attributes["file_type_str"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["document_path".to_sym] != nil
        name = "document_path".to_sym
        value = attributes["document_path"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["access".to_sym] != nil
        name = "access".to_sym
        value = attributes["access"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["url".to_sym] != nil
        name = "url".to_sym
        value = attributes["url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["file_type".to_sym] != nil
        name = "file_type".to_sym
        value = attributes["file_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if DocumentAccessInfoResult.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    DocumentAccessInfoResult.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

