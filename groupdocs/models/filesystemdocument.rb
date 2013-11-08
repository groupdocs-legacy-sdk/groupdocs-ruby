class FileSystemDocument
  attr_accessor :url, :version, :type, :file_type, :size, :thumbnail, :supported_types, :id, :guid, :name, :access, :owner, :sharers, :dir, :modified_on, :created_on

  # :internal => :external
  def self.attribute_map
  {
      :url => :url, :version => :version, :type => :type, :file_type => :file_type, :size => :size, :thumbnail => :thumbnail, :supported_types => :supported_types, :id => :id, :guid => :guid, :name => :name, :access => :access, :owner => :owner, :sharers => :sharers, :dir => :dir, :modified_on => :modified_on, :created_on => :created_on

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if FileSystemDocument.attribute_map["url".to_sym] != nil
        name = "url".to_sym
        value = attributes["url"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["version".to_sym] != nil
        name = "version".to_sym
        value = attributes["version"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["file_type".to_sym] != nil
        name = "file_type".to_sym
        value = attributes["file_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["size".to_sym] != nil
        name = "size".to_sym
        value = attributes["size"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["thumbnail".to_sym] != nil
        name = "thumbnail".to_sym
        value = attributes["thumbnail"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["supported_types".to_sym] != nil
        name = "supported_types".to_sym
        value = attributes["supported_types"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push arrayValue
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if FileSystemDocument.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["guid".to_sym] != nil
        name = "guid".to_sym
        value = attributes["guid"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["access".to_sym] != nil
        name = "access".to_sym
        value = attributes["access"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["owner".to_sym] != nil
        name = "owner".to_sym
        value = attributes["owner"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["sharers".to_sym] != nil
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
      if FileSystemDocument.attribute_map["dir".to_sym] != nil
        name = "dir".to_sym
        value = attributes["dir"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["modified_on".to_sym] != nil
        name = "modified_on".to_sym
        value = attributes["modified_on"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if FileSystemDocument.attribute_map["created_on".to_sym] != nil
        name = "created_on".to_sym
        value = attributes["created_on"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    FileSystemDocument.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

